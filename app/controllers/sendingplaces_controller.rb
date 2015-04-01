class SendingplacesController < ApplicationController
  before_action :set_sendingplace, only: [:show, :edit, :update, :destroy]

  # GET /sendingplaces
  # GET /sendingplaces.json
  def index
    if current_user.yesOffice? || current_user.systemAdmin?
      @sendingplaces = Sendingplace.all()
    end
    if current_user.yesBranch?
      @sendingplaces = Sendingplace.where(:branch_id => current_user.company_id)
    end
  end

  # GET /sendingplaces/1
  # GET /sendingplaces/1.json
  def show
  end

  # GET /sendingplaces/new
  def new
    @sendingplace = Sendingplace.new
    @sendingplace.branch = current_user.company
  end

  # GET /sendingplaces/1/edit
  def edit
  end

  # POST /sendingplaces
  # POST /sendingplaces.json
  def create
    @sendingplace = Sendingplace.new(sendingplace_params)

    respond_to do |format|
      if @sendingplace.save
        format.html { redirect_to @sendingplace, notice: 'Sendingplace was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sendingplace }
      else
        format.html { render action: 'new' }
        format.json { render json: @sendingplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sendingplaces/1
  # PATCH/PUT /sendingplaces/1.json
  def update
    respond_to do |format|
      if @sendingplace.update(sendingplace_params)
        format.html { redirect_to @sendingplace, notice: 'Sendingplace was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sendingplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sendingplaces/1
  # DELETE /sendingplaces/1.json
  def destroy
    @sendingplace.destroy
    respond_to do |format|
      format.html { redirect_to sendingplaces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sendingplace
      @sendingplace = Sendingplace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sendingplace_params
      params.require(:sendingplace).permit(:branch_id, :name, :postcode, :address, :phone_no, :destination_name, :name_kana)
    end
end
