class CreateSendingplaces < ActiveRecord::Migration
  def change
    create_table :sendingplaces do |t|
      t.integer :branch_id
      t.string :name
      t.string :postcode
      t.string :address
      t.string :phone_no
      t.string :destination_name

      t.timestamps
    end
  end
end
