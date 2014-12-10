class AddInqlankToEngineorders < ActiveRecord::Migration
  def change
    add_column :engineorders, :inq_lank, :string
  end
end
