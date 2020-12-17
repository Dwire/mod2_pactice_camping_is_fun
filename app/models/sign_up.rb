class SignUp < ApplicationRecord
  belongs_to :camper 
  belongs_to :activity


# - time must be between 0 and 23
# - Camper can only sign up for a activity once

  validates :time, numericality: {greater_than_or_equal_to: 0, less_than: 24}
  validates :camper_id, uniqueness: {scope: :activity_id}

end
