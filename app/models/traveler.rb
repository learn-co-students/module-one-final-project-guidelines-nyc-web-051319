class Traveler < ActiveRecord::Base
  has_many :plans
  has_many :activities, through: :plans

end
