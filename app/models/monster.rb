# Created with Name, Type, HP, DMG, Dungeon, Alive?
class Monster < ActiveRecord::Base
    has_many :dungeons, through: :monster_infestations
    #All instances pulled from D&D API

end
