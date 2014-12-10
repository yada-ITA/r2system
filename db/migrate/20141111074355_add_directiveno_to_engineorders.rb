class AddDirectivenoToEngineorders < ActiveRecord::Migration
  def change
    add_column :engineorders, :directive_no, :string
  end
end
