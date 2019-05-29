#!/usr/bin/env ruby
require 'pry'
require_relative '../config/environment'

puts "*" * 60
puts "\t\tWorking Title!"
puts "*" * 60

def greeting
puts "Greetings, Adventurer! What would you like to do?"
puts "\s\s\s1. Create Character"
puts "\s\s\s2. Load Character"
user_input = gets.chomp
character_select(user_input)
end


def create_player(name_input, battlecry_input)
  Player.create(:name => name_input, :max_hp => 200, :current_hp => 200, :min_dmg => 6, :max_dmg => 12, :alive => true, :level => 1, :battlecry => battlecry_input, :accuracy => 50)
end

def character_select(user_input)
  if user_input == "1"
    puts "Please enter a name"
    name_input = gets.chomp
    puts "Please enter a battlecry"
    battlecry_input = gets.chomp
    create_player(name_input, battlecry_input)
  elsif user_input == "2"
    puts "Please select a character"
    Player.all.each_with_index do |player, n|
      puts "\t#{n + 1}. #{player.name}"
    end
    character_selection = gets.chomp
    if character_list[character_selection]
      character_list[character_selection]
    else
      puts "That character doesn't exist. Please try again."
    end
  elsif user_input != "1" && user_input != "2"
    puts "That is not a valid command. Stop it."
    greeting
  end
end

greeting
