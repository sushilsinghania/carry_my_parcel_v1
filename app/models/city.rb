class City < ApplicationRecord


  validates :city, presence: { message: "must be present" }
  validates :country , presence: { message: "must be present" }

end
