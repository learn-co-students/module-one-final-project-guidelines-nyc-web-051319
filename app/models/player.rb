# Create Adventurer with Name, Class, HP, WeaponDMG, Alive? Boolean
class Player < ActiveRecord::Base
    has_many :dungeons, through: :dungeon_crawls
end
