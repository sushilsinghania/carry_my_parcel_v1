class Traveler < ApplicationRecord
  belongs_to :user

  validates :acceptable_weight_lbs, presence: { message: "must be present" }
  validates :expected_fee , presence: { message: "must be present" }
  validates :date_of_travel , presence: { message: "must be present" }


end
