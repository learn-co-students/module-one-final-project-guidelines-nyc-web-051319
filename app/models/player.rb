# Create Adventurer with Name, Class, HP, WeaponDMG, Alive? Boolean
class Player < ActiveRecord::Base
    has_many :dungeons, through: :dungeon_crawls

    attr_accessor :hp, :dmg, :alive
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @hp = 100
        @dmg = 50
        @alive = true

        @@all << self
    end

    def self.all
        @@all
    end

end
