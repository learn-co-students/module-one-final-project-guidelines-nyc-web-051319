class Dungeon < ActiveRecord::Base
  has_many :monsters, through: :monster_infestations
end
