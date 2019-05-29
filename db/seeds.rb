def seed_monsters
  get_monster_stats.each do |monster|
    puts "Creating Monster: #{monster["name"]}"
    Monster.create(:name => monster["name"], :creature_type => monster["type"], :hp => monster["hit_points"], :dmg => monster["strength"], :difficulty => monster["challenge_rating"])
  end
end

seed_monsters

dungeons = {
  "The Sewers": "Easy",
  "Tomb of Malchor": "Medium",
  "Dragon's Lair": "Hard",
  "Frozen Ice Cave": "Medium",
  "Volcanic Caverns": "Hard",
  "Training Grounds": "Easy",
  "Flatiron Code Challenge Chamber": "Supa Hard"
}

dungeons.each do |name, difficulty|
  puts "Creating #{name}"
  Dungeon.create(name: name, difficulty: difficulty)
end
