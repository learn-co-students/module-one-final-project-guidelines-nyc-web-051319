# Create Adventurer with Name, Class, HP, WeaponDMG, Alive? Boolean
require 'pry'
class Player < ActiveRecord::Base
    has_many :dungeons, through: :dungeon_crawls

    # Attack, Level Up, Status, BattleCry, Min & Max Damage, Attack Accuracy, Weapon

    # View all current stats of a character
    def print_status
        puts "LEVEL #{self.level}"
        puts "Health: #{self.current_hp}/#{self.max_hp}"
        puts "Damage: #{self.min_dmg} to #{self.max_dmg} DMG per attack."
        puts "Accuracy Modifer: #{self.accuracy}% to hit."
        puts "Weapon: #{self.weapon}"
        puts "#{self.battlecry}!!!"
    end

    # Rest function resets current health to max health. Will be called when leveled up.
    def rest
        self.current_hp = self.max_hp
        puts "A warm hearth and a stein of mead at an Inn reinvigors you!"
        sleep(1)
        puts "Current health: #{self.current_hp}/#{self.max_hp}"
        sleep(1)
    end

    def damage
        self.current_hp -= 20
        puts "You take 20 damage!"
        sleep(1)
        puts "Current health: #{self.current_hp}/#{self.max_hp}"
        sleep(1)
    end

    # Basic attack logic. % Chance to hit (Accuracy Stat), random damage within range if successful (min -> max dmg) return value is damage number, which will be sent to fight method
    def attack
        swing = rand(1..100)
        if swing < self.accuracy
            puts "You swing your #{self.weapon} and hit the #{current_monster}!"
            player_damage = rand(self.min_dmg..self.max_dmg)
        else
            puts "You missed! WHOOSH!"
            player_damage = 0
        end
    player_damage
    end

    # Battle option for potential for monster to miss a turn
    def intimidate
        puts "You raise your #{self.weapon} and roar with beastial vigor!"
        sleep(1)
        puts "#{self.battlecry}!!!"
        sleep(1)
    end
    # Every successful run will increase level and up stats
    def level_up
        self.max_hp = self.max_hp + rand(50..75)
        rest
        self.min_dmg = self.min_dmg * 1.2
        self.max_dmg = self.max_dmg * 1.4
        self.accuracy += 2
        self.level += 1
    end


end
