class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :country
      t.string :city

      t.timestamps

    end
  end
end
