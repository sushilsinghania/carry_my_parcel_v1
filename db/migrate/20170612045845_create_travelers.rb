class CreateTravelers < ActiveRecord::Migration[5.0]
  def change
    create_table :travelers do |t|
      t.date :date_of_travel
      t.integer :origin_id
      t.integer :destination_id
      t.integer :acceptable_weight_lbs
      t.integer :expected_fee
      t.integer :user_id

      t.timestamps

    end
  end
end
