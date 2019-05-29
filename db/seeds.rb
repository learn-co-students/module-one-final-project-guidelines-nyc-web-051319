require 'pry'
require_relative '../lib/api_communicator.rb'
require_relative '../config/environment.rb'
require_relative '../app/models/monster.rb'


def seed_monsters
  get_monster_stats.each do |monster|
    Monster.new(monster["name"], monster["type"], monster["hit_points"], monster["strength"], monster["challenge_rating"])
  end
end

seed_monsters
