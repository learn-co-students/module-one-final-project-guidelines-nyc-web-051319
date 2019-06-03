class CLI

  @@player_array = []
  #displays title screen

  def self.intro
    puts "In a land far away..."
    sleep(2)
    puts "An evil stirs..."
    sleep(2)
    Printer.logo
  end

  def self.title
    SFX.title_music
    puts " "
    title = Rainbow("Legend of Rubyerion: The Seven Paths").red
    puts " "
    puts "*" * 60
    puts title.center(60, ".")
    puts "*" * 60
    puts " "
  end

  #greeting and menu prompt
  def self.greeting
    puts "Greetings, Adventurer! What would you like to do?"
    puts " "
    puts "   1. Create Character"
    puts "   2. Load Character"
    puts "   3. Delete Character"
    puts "   4. Quit"
    user_input = gets.chomp
    puts " "
    character_select(user_input)
  end

  #instantiates a new Player and adds them to ActiveRecord database
  def self.create_player(name_input, battlecry_input, weapon_input)
    @@current_player = Player.create(name: name_input, max_hp: 150, current_hp: 150, min_dmg: 6, max_dmg: 12, alive: true, level: 1, battlecry: battlecry_input, accuracy: 70, weapon: weapon_input)
    puts "Okay, #{@@current_player.name}. Ready yourself..."
    sleep(2)
    puts " "
  end

  #allows player to create new character, pick an existent one, or reloads if they fail to do either -- choice leads to dungeon selection menu
  def self.character_select(user_input)
    #begin create player
    if user_input == "1"
      puts "Please enter a name:"
      name_input = gets.chomp
      puts " "
      puts "Please enter a battlecry:"
      battlecry_input = gets.chomp
      puts " "
      puts "Please enter a melee weapon:"
      weapon_input = gets.chomp.downcase
      puts " "
      self.create_player(name_input, battlecry_input, weapon_input)
      choose_dungeon #end create player
      #begin select player
    elsif user_input == "2"
      puts "Which character would you like to play as?"
      self.list_players
      puts "   #{@@player_array.length + 1}. Return to Main Menu"
      character_selection = gets.chomp.to_i
      if character_selection == @@player_array.length + 1
        self.greeting
      else
        puts "Okay, #{Player.find_by_name(@@player_array[character_selection - 1]).name}. You know the drill..."
        sleep(2)
        puts " "
        @@current_player = Player.find_by_name(@@player_array[character_selection - 1])
        self.choose_dungeon #end select player
      end
      #begin delete player
    elsif user_input == "3"
      puts "Which character would you like to delete?"
      self.list_players
      puts "   #{@@player_array.length + 1}. Return to Main Menu"
      delete_input = gets.chomp.to_i
      if character_selection == (@@player_array.length + 1)
        self.greeting
      elsif character_selection != (@@player_array.length + 1) #not done with this conditional
        Player.where(name: @@player_array[delete_input - 1]).destroy_all
        puts "Not #{@@player_array[delete_input - 1]}. Anyone but #{@@player_array[delete_input - 1]}..."
        sleep(2)
        puts " "
        self.greeting
      end #end delete player
      #begin invalid selection
    elsif user_input != "1" && user_input != "2" && user_input != "3" && user_input != "4"
      puts "That is not a valid command. Stop it."
      puts " "
      self.greeting #end invalid selection
    elsif user_input == "4"
      #begin quit
      puts "Pathetic! Come back when you're feeling braver..."
      exit #end quit
    end
  end

  def self.list_players
    Player.all.each_with_index do |player, n|
      @@player_array << player.name
      puts "   #{n + 1}. #{player.name}"
    end
  end

  #chooses a dungeon and calls method to instantiate dungeon crawl
  def self.choose_dungeon
    puts "Which dungeon do you dare to enter?"
    puts " "
    Dungeon.all.each_with_index do |dungeon, n|
      puts "   #{n + 1}. #{dungeon.name} -- #{dungeon.difficulty}"
    end
    dungeon_input = gets.chomp.to_i
    @@current_dungeon = Dungeon.all[dungeon_input - 1]
    puts "The air is musty and your torch flickers..."
    sleep(2)
    self.start_dungeon_crawl
  end

  def self.start_dungeon_crawl
    DungeonCrawl.create(player_id: @@current_player.id, dungeon_id: @@current_dungeon.id)
    self.start_monster_infestation
  end

  def self.start_monster_infestation
    # monster_array = []
    #
    # (0..num_monsters-1).each do |x|
    #   monster = Monster.find(rand(1..325))
    #   MonsterInfestation.create(dungeon_id: @@current_dungeon.id, monster_id: monster.id)
    #
    # end

    run = DungeonRun.new(@@current_player, monster_query(3))
    run.begin_run
  end

  def self.monster_query(num_monsters)
    case @@current_dungeon.difficulty
      when "Very Easy"
        # 0 - 2
        Monster.where("difficulty > 0").where("difficulty < 2").order(Arel.sql("random()")).first(num_monsters)
      when "Easy"
        # 3 - 6
        Monster.where("difficulty > 3").where("difficulty < 6").order(Arel.sql("random()")).first(num_monsters)
      when "Mediocre"
        # 7 - 10
        Monster.where("difficulty > 7").where("difficulty < 10").order(Arel.sql("random()")).first(num_monsters)
      when "Medium"
        # 11 - 13
        Monster.where("difficulty > 11").where("difficulty < 13").order(Arel.sql("random()")).first(num_monsters)
      when "Hard"
        # 14 - 17
        Monster.where("difficulty > 14").where("difficulty < 17").order(Arel.sql("random()")).first(num_monsters)
      when "Extreme"
        # 18 - 20
        Monster.where("difficulty > 18").where("difficulty < 20").order(Arel.sql("random()")).first(num_monsters)
      when "Insane"
        # 21 - 30
        Monster.where("difficulty > 21").where("difficulty < 30").order(Arel.sql("random()")).first(num_monsters)
      end
  end


end
