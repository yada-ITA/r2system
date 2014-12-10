class AddNamekanaToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :name_kana, :string
  end
end
