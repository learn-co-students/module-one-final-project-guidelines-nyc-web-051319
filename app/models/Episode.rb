class Episode < ActiveRecord::Base
  has_many :views
  has_many :users, through: :views

  ####list of viewers###
end
