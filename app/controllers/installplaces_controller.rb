class InstallplacesController < ApplicationController
  before_action :set_installplace, only: [:show, :edit, :update, :destroy]

  # GET /installplaces
  # GET /installplaces.json
  def index
    @installplaces = Installplace.all
  end

  # GET /installplaces/1
  # GET /installplaces/1.json
  def show
  end

  # GET /installplaces/new
  def new
    @installplace = Installplace.new
  end

  # GET /installplaces/1/edit
  def edit
  end

  # POST /installplaces
  # POST /installplaces.json
  def create
    @installplace = Installplace.new(installplace_params)

    respond_to do |format|
      if @installplace.save
        format.html { redirect_to @installplace, notice: 'Installplace was successfully created.' }
        format.json { render action: 'show', status: :created, location: @installplace }
      else
        format.html { render action: 'new' }
        format.json { render json: @installplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /installplaces/1
  # PATCH/PUT /installplaces/1.json
  def update
    respond_to do |format|
      if @installplace.update(installplace_params)
        format.html { redirect_to @installplace, notice: 'Installplace was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @installplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /installplaces/1
  # DELETE /installplaces/1.json
  def destroy
    @installplace.destroy
    respond_to do |format|
      format.html { redirect_to installplaces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_installplace
      @installplace = Installplace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def installplace_params
      params.require(:installplace).permit(:name, :postcode, :address, :phone_no, :destination_name)
    end
end
