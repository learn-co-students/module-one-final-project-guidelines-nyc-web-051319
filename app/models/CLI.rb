class CLI < ActiveRecord::Base

  #displays title screen
  def self.title
    title = "Working Title!"
    puts "*" * 60
    puts title.center(60, ".")
    puts "*" * 60
  end

  #greeting and menu prompt
  def self.greeting
    puts "Greetings, Adventurer! What would you like to do?"
    puts "   1. Create Character"
    puts "   2. Load Character"
    user_input = gets.chomp
    character_select(user_input)
  end

  #instantiates a new Player and adds them to ActiveRecord database
  def self.create_player(name_input, battlecry_input, weapon_input)
    @current_player = Player.create(name: name_input, max_hp: 200, current_hp: 200, min_dmg: 6, max_dmg: 12, alive: true, level: 1, battlecry: battlecry_input, accuracy: 50, weapon: weapon_input)
  end

  #allows player to create new character, pick an existent one, or reloads if they fail to do either -- choice leads to dungeon selection menu
  def self.character_select(user_input)
    if user_input == "1"
      puts "Please enter a name"
      name_input = gets.chomp
      puts "Please enter a battlecry"
      battlecry_input = gets.chomp
      puts "Please enter a melee weapon"
      weapon_input = gets.chomp
      self.create_player(name_input, battlecry_input, weapon_input)
      choose_dungeon
    elsif user_input == "2"
      puts "Which character would you like to play as?"
      player_array = []
      Player.all.each_with_index do |player, n|
        player_array << player.name
        puts "   #{n + 1}. #{player.name}"
      end
      character_selection = gets.chomp.to_i
      puts "You picked #{Player.find_by_name(player_array[character_selection - 1]).name}!"
      sleep(1)
      @current_player = Player.find_by_name(player_array[character_selection - 1])
      self.choose_dungeon
    elsif user_input != "1" && user_input != "2"
      puts "That is not a valid command. Stop it."
      self.greeting
    end
  end

  #chooses a dungeon and calls method to instantiate dungeon crawl
  def self.choose_dungeon
    puts "Which dungeon do you dare to enter?"
    Dungeon.all.each_with_index do |dungeon, n|
      puts "   #{n + 1}. #{dungeon.name} -- #{dungeon.difficulty}"
    end
    dungeon_input = gets.chomp.to_i
    @current_dungeon = Dungeon.all[dungeon_input - 1]
    puts "Abandon all hope..."
    self.start_dungeon_crawl
  end

  def self.start_dungeon_crawl
    DungeonCrawl.create(player_id: @current_player.id, dungeon_id: @current_dungeon.id)
    self.start_monster_infestation
  end

  def self.start_monster_infestation
    m1 = rand(1..325)
    m2 = rand(1..325)
    m3 = rand(1..325)
    MonsterInfestation.create(dungeon_id: @current_dungeon.id, monster_id: Monster.find(m1).id)
    MonsterInfestation.create(dungeon_id: @current_dungeon.id, monster_id: Monster.find(m2).id)
    MonsterInfestation.create(dungeon_id: @current_dungeon.id, monster_id: Monster.find(m3).id)
  end
end
