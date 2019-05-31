# Create Adventurer with Name, Class, HP, WeaponDMG, Alive? Boolean
require 'pry'
class Player < ActiveRecord::Base
    has_many :dungeons, through: :dungeon_crawls

    # Attack, Level Up, Status, BattleCry, Min & Max Damage, Attack Accuracy, Weapon

    # View all current stats of a character
    def print_status
        puts "LEVEL #{self.level}"
        sleep(1)
        puts "Health: #{self.current_hp}/#{self.max_hp}"
        sleep(1)
        puts "Damage: #{self.min_dmg} to #{self.max_dmg} DMG per attack."
        sleep(1)
        puts "Accuracy Modifer: #{self.accuracy}% to hit."
        sleep(1)
        puts "Weapon: #{self.weapon}"
        sleep(1)
        puts "Battlecry: #{self.battlecry}!!!"
        sleep(1)
    end

    # Rest function resets current health to max health. Will be called when leveled up.
    def rest
        self.current_hp = self.max_hp
        puts "A warm hearth and a stein of mead reinvigorate you!"
        sleep(1)
        puts "Current health: #{self.current_hp}/#{self.max_hp}"
        sleep(1)
    end
    # Damage is a testing method during development
    # def damage
    #     self.current_hp -= 20
    #     puts "You take 20 damage!"
    #     sleep(1)
    #     puts "Current health: #{self.current_hp}/#{self.max_hp}"
    #     sleep(1)
    # end

    # Basic attack logic. % Chance to hit (Accuracy Stat), random damage within range if successful (min -> max dmg) return value is damage number, which will be sent to fight method
    def attack(current_monster)
        swing = rand(1..100)
        if swing < self.accuracy
            player_damage = rand(self.min_dmg..self.max_dmg)
            puts "You swing your #{self.weapon} and hit the #{current_monster.name} for #{player_damage} Damage!"
            SFX.player_hit
        else
            puts "You missed! WHOOSH!"
            SFX.miss
            player_damage = 0
        end
        player_damage
    end

    # Battle option for potential for monster to miss a turn
    def intimidate
        puts "You raise your #{self.weapon} and roar with bestial vigor!"
        SFX.intimidate
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
        SFX.level_up
    end


end
