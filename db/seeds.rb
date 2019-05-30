def seed_monsters
  get_monster_stats.each do |monster|
    puts "Creating Monster: #{monster["name"]}"
    Monster.create(:name => monster["name"], :creature_type => monster["type"], :hp => monster["hit_points"], :dmg => monster["strength"], :difficulty => monster["challenge_rating"])
  end
end

seed_monsters

# Add XP level calls as per difficulty
dungeons = {
  "Training Grounds": "Very Easy",
  "The Sewers": "Easy",
  "Tomb of Malchor": "Medicore",
  "Frozen Ice Cave": "Medium",
  "Volcanic Caverns": "Hard",
  "Dragon's Lair": "Extreme",
  "Flatiron Code Challenge Chamber": "Insane"
}

dungeons.each do |name, difficulty|
  puts "Creating #{name}"
  Dungeon.create(name: name, difficulty: difficulty)
end
