def seed_monsters
  get_monster_stats.each do |monster|
    puts "Creating Monster: #{monster["name"]}"
    Monster.create(:name => monster["name"], :creature_type => monster["type"], :hp => monster["hit_points"], :dmg => monster["strength"], :difficulty => monster["challenge_rating"])
  end
end

seed_monsters
