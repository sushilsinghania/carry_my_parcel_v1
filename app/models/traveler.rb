class Traveler < ApplicationRecord
  belongs_to :user



  validates :acceptable_weight_lbs, presence: { message: "must be present" }
  validates :expected_fee , presence: { message: "must be present" }

  belongs_to :origin, :class_name => "City"
  belongs_to :destination, :class_name => "City"

end
