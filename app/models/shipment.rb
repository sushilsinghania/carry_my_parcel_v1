class Shipment < ApplicationRecord

  belongs_to :user

  validates :offer_price, presence: { message: "must be present" }
  validates :data_of_shipment , presence: { message: "must be present" }
  validates :photo , presence: { message: "must be present" }
  validates :date_of_travel , presence: { message: "must be present" }

end
