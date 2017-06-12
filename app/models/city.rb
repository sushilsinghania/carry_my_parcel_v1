class City < ApplicationRecord


  validates :city, presence: { message: "must be present" }
  validates :country , presence: { message: "must be present" }

  has_many :traveler_origins, :class_name => "Traveler", :foreign_key => "origin_id"
  has_many :traveler_destinations, :class_name => "Traveler", :foreign_key => "destination_id"
  has_many :shipment_destinations, :class_name => "Shipment", :foreign_key => "destination_id"
  has_many :shipment_origins, :class_name => "Shipment", :foreign_key => "origin_id"

  
end
