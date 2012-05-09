class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.integer :user_id
      t.string :name
      t.datetime :date
      t.integer :amount

      t.string :classification
      t.float :latitude
      t.float :longitude
      t.string :country
      t.string :city
      t.string :street
      t.boolean :gmaps
      t.timestamps
    end
  end
end
