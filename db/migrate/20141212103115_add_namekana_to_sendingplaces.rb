class AddNamekanaToSendingplaces < ActiveRecord::Migration
  def change
    add_column :sendingplaces, :name_kana, :string
  end
end
