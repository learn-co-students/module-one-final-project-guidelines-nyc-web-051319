class SlayContract < ActiveRecord::Base
  attr_accessor :monster, :adventurer, :cost, :dungeon, :peasant, :complete

  @@all = []

  def initialize(monster, adventurer, cost, dungeon, peasant)
    @monster = monster
    @adventurer = adventurer
    @cost = cost
    @dungeon = dungeon
    @peasant = peasant
    @complete = false

    @@all << self
  end

  def self.all
    @@all
  end
end
