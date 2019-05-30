# Want to implement pulling the challenge rating from the API as a method to scale dungeon difficulty
require 'pry'
class Monster < ActiveRecord::Base
    has_many :dungeons, through: :monster_infestations
    #All instances pulled from D&D API

    # View all current stats of a monster
    def inspect_monster
        puts "Monster: #{self.name}"
        sleep(2)
        puts "Type: #{self.creature_type}"
        sleep(2)
        puts "Current Health: #{self.hp}"
        sleep(2)
        puts "Damage Modifier: #{self.dmg} DMG per attack."
        sleep(2)
    end
    # Test method for monster getting damaged
    # def damage
    #     self.hp -= 20
    #     puts "#{self.name} takes 20 damage!"
    #     sleep(1)
    #     puts "Health remaining: #{self.hp}"
    #     sleep(1)
    # end

    # Basic attack logic. % Chance to hit (Accuracy Stat), random damage within range if successful (min -> max dmg) return value is damage number, which will be sent to fight method
    def attack(current_player)
        swing = rand(1..100)
        if swing < 60
            monster_damage = rand(self.dmg-5..self.dmg+5)
            puts "#{self.name} attacks! It struck #{current_player.name} for #{monster_damage} Damage!"
        else
            puts "Look out! #{self.name} missed!"
            monster_damage = 0
        end
    monster_damage
    end


end
