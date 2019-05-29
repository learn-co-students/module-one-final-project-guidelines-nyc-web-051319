class Dungeon < ActiveRecord::Base
  has_many :monsters, through: :monster_infestations
  attr_reader :name, :difficulty
  attr_accessor :clear

  @@all = []

  def initialize(name, difficulty)
    @name = name
    @difficulty = difficulty
    @clear = false

    @@all << self
  end

  def self.all
    @@all
  end
end
