# Created with Name, Type, HP, DMG, Dungeon, Alive?
class Monster < ActiveRecord::Base
    belongs_to :dungeon
    attr_accessor :hp, :dmg, :dungeon, :alive
    attr_reader :name, :type

    @@all = []


    def initialize(name, type, hp, dmg, dungeon)
        @name = name
        @type = type
        @hp = hp
        @dmg = dmg
        @dungeon = dungeon
        @alive = true

        @@all << self
    end

    def self.all
        @@all
    end

end