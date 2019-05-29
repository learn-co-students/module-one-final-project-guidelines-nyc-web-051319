#!/usr/bin/env ruby
require 'pry'
require_relative '../config/environment'

def title
  #displays title screen
puts "*" * 60
puts "\t\tWorking Title!"
puts "*" * 60
end

def greeting
  #greeting and menu prompt
puts "Greetings, Adventurer! What would you like to do?"
puts "\s\s\s1. Create Character"
puts "\s\s\s2. Load Character"
user_input = gets.chomp
character_select(user_input)
end


def create_player(name_input, battlecry_input)
  #instantiates a new Player and adds them to ActiveRecord database
  Player.create(:name => name_input, :max_hp => 200, :current_hp => 200, :min_dmg => 6, :max_dmg => 12, :alive => true, :level => 1, :battlecry => battlecry_input, :accuracy => 50, :weapon = weapon_input)
  player(Player.last)
end

def character_select(user_input)
  #allows player to create new character, pick an existent one, or reloads if they fail to do either -- choice leads to dungeon selection menu
  if user_input == "1"
    puts "Please enter a name"
    name_input = gets.chomp
    puts "Please enter a battlecry"
    battlecry_input = gets.chomp
    puts "Please enter a melee weapon"
    weapon_input = gets.chomp
    create_player(name_input, battlecry_input, weapon_input)
    choose_dungeon
  elsif user_input == "2"
    puts "Please type the name of the character you want to play as"
    Player.all.each_with_index do |player, n|
      puts "\t#{n + 1}. #{player.name}"
    end
    character_selection = gets.chomp
    puts "You picked #{Player.find_by_name(character_selection).name}!"
    choose_dungeon
  elsif user_input != "1" && user_input != "2"
    puts "That is not a valid command. Stop it."
    greeting
  end
end

def current_player(player_selection)
  player = player_selection
  player
end

def choose_dungeon
  puts "Which dungeon do you dare enter?"
  Dungeon.all.each_with_index do |dungeon, n|
    puts "\t#{n + 1} #{dungeon.name} -- #{dungeon.difficulty}"
  end
  dungeon_input = gets.chomp
  "Abandon all hope..."
  #method instantiate dungeon crawl
end

title
greeting
