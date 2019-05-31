class SFX
    # Test SFX Sound Library

    def self.player_hit
        player_hit = Audite.new
        player_hit.load('./app/sound/player_attack.mp3')
        player_hit.start_stream
    end

    def self.monster_hit
        monster_hit = Audite.new
        monster_hit.load('./app/sound/monster_attack.mp3')
        monster_hit.start_stream
    end

    def self.miss
        miss = Audite.new
        miss.load('./app/sound/miss.mp3')
        miss.start_stream
    end

    def self.intimidate
        intimidate = Audite.new
        intimidate.load('./app/sound/intimidate.mp3')
        intimidate.start_stream
    end

    def self.flee
        flee = Audite.new
        flee.load('./app/sound/flee.mp3')
        flee.start_stream
    end

    def self.death
        death = Audite.new
        death.load('./app/sound/death.mp3')
        death.start_stream
    end

    def self.level_up
        level_up = Audite.new
        level_up.load('./app/sound/level_up.mp3')
        level_up.start_stream
    end

    def self.title_music
        theme = Audite.new
        theme.load('./app/sound/theme.mp3')
        theme.start_stream
    end

    def self.battle_music
        b_music = Audite.new
        b_music.load('./app/sound/battle.mp3')
        b_music.start_stream
    end

end