class Camper < ApplicationRecord
  has_many :sign_ups, dependent: :destroy 
  has_many :activities, through: :sign_ups
end
