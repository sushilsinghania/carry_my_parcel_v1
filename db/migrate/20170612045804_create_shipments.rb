class CreateShipments < ActiveRecord::Migration[5.0]
  def change
    create_table :shipments do |t|
      t.integer :user_id
      t.string :photo
      t.integer :destination_id
      t.integer :origin_id
      t.integer :offer_price
      t.date :data_of_shipment

      t.timestamps

    end
  end
end
