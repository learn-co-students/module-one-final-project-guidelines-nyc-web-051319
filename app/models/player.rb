# Create Adventurer with Name, Class, HP, WeaponDMG, Alive? Boolean
class Player < ActiveRecord::Base
    has_many :dungeons, through: :dungeon_crawls

    # Attack, Level Up, Status, BattleCry, Min & Max Damage
    def status
        puts "Health: #{self.current_hp}/#{self.max_hp}"
        puts "Damage: #{self.min_dmg} to #{self.max_dmg} DMG per attack."
        puts "Accuracy Modifer: #{self.accuracy}% to hit."
        puts "#{self.battlecry}"
    end
    
    def rest
        self.current_hp = self.max_hp
    end

    def attack
        self.dmg - monster.hp
    end

    def intimidate
        puts "You roar with beastial vigor!"
        sleep(2)
        puts "#{self.battlecry}!!!"
    end

    def level_up
        self.max_hp + rand(50..75) = self.max_hp
        rest
        self.min_dmg * 1.2 = self.min_dmg
        self.max_dmg * 1.4 = self.max_dmg
        self.accuracy + rand[]
    end

end
