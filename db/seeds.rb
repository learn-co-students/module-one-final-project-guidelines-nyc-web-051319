def seed_monsters
  get_monster_stats.each do |monster|
    puts "Creating Monster: #{monster["name"]}"
    Monster.create(:name => monster["name"], :creature_type => monster["type"], :hp => monster["hit_points"], :dmg => monster["strength"], :difficulty => monster["challenge_rating"])
  end
end

seed_monsters

def create_player(name_input, battlecry_input)
  Player.create(:name => name_input, :max_hp => 200, :current_hp => 200, :min_dmg => 6, :max_dmg => 12, :alive => true, :level => 1, :battlecry => battlecry_input, :accuracy => 50)
end
