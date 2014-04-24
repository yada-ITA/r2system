class CreateInstallplaces < ActiveRecord::Migration
  def change
    create_table :installplaces do |t|
      t.string :name
      t.string :postcode
      t.string :address
      t.string :phone_no
      t.string :destination_name

      t.timestamps
    end
  end
end
