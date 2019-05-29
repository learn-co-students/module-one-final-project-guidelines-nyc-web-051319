require 'pry'
require_relative '../lib/api_communicator.rb'
require_relative '../config/environment.rb'


def seed_monsters
  get_monster_stats.each do |monster|
    Monster.new(monster["name"], monster["type"], monster["hit_points"], monster["strength"])
  end
end

seed_monsters
