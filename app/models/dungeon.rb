class Dungeon < ActiveRecord::Base
  has_many :monsters
  attr_reader :name, :location
  attr_accessor :type, :clear

  @@all = []

  def initialize(name, location, type)
    @name = name
    @location = location
    @type = type
    @clear = false

    @@all << self
  end

  def self.all
    @@all
  end
end
