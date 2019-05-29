# Created with Name, Type, HP, DMG, Dungeon, Alive?
require 'pry'
class Monster < ActiveRecord::Base
    has_many :dungeons, through: :monster_infestations
    attr_accessor :hp, :dmg, :alive
    attr_reader :name, :type

    @@all = []

#All instances pulled from D&D API
    def initialize(name, type, hp, dmg)
        @name = name
        @type = type
        @hp = hp
        @dmg = dmg
        @alive = true

        @@all << self
    end

    def self.all
        @@all
    end
end
