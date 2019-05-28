class Activity < ActiveRecord::Base
  has_many :plans
  has_many :travelers , through: :plans

end
