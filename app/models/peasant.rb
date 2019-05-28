class Peasant < ActiveRecord::Base
  attr_reader :name
  attr_accessor :gold

  @@all = []

  def initialize (name, gold)
    @name = name
    @gold = gold

    @@all << self
  end

  def self.all
    @@all
  end
end
