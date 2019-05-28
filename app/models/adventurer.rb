# Create Adventurer with Name, Class, HP, WeaponDMG, Alive? Boolean
class Adventurer < ActiveRecord::Base

    attr_accessor :hp, :weapon_dmg, :alive
    attr_reader :name, :class

    @@all = []

    def initialize(name, class, hp, weapon_dmg)
        @name = name
        @class = class
        @hp = hp
        @weapon_dmg = weapon_dmg
        @alive = true

        @@all << self
    end

    def self.all
        @@all
    end

end