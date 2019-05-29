#!/usr/bin/env ruby
require_relative '../config/environment'

puts "*" * 60
puts "\t\tWorking Title!"
puts "*" * 60
puts "Greetings, Adventurer! What would you like to do?"
puts "\s\s\s1. Create Character"
puts "\s\s\s2. Load Character"

user_input = gets.chomp

def character_select(user_input)
  if user_input == 1
    puts "Please enter a name"
    name_input = gets.chomp
    puts "Please enter a battlecry"
    battlecry_input = gets.chomp
    create_player(name_input, battlecry_input)
  elsif user_input == 2
    puts "Please select a character"
    character_list = Player.each_with_index do |player, n|
      puts "#{n + 1}. #{player.name}"
    end
    character_selection = gets.chomp
    if character_list[character_selection]
      character_list[character_selection]
    else
      puts "That character doesn't exist. Please try again."
    end
  else
    "That is not a valid command. Stop it."
  end
end
