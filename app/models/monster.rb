# Created with Name, Type, HP, DMG, Dungeon, Alive?
require 'pry'
class Monster < ActiveRecord::Base
    has_many :dungeons, through: :monster_infestations
    attr_accessor :hp, :dmg, :alive
    attr_reader :name, :type, :difficulty

    @@all = []

#All instances pulled from D&D API
    def initialize(name, type, hp, dmg, difficulty)
        @name = name
        @type = type
        @hp = hp
        @dmg = dmg
        @alive = true
        @difficulty = difficulty

        @@all << self
        #needs difficulty here and in table
    end

    def self.all
        @@all
    end

    # def self.save
    #
    # end
end
