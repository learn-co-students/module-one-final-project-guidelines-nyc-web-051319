class SFX
    # Test SFX Sound Library

    def self.player_hit
        player_hit = Audite.new
        player_hit.load('./app/sound/player_attack.mp3')
        player_hit.start_stream
    end

    def self.monster_hit
        player_hit = Audite.new
        player_hit.load('./app/sound/monster_attack.mp3')
        player_hit.start_stream
    end

    def self.miss
        player_hit = Audite.new
        player_hit.load('./app/sound/miss.mp3')
        player_hit.start_stream

    end

    def self.flee
        player_hit = Audite.new
        player_hit.load('./app/sound/flee.mp3')
        player_hit.start_stream
    end

    def self.death
        player_hit = Audite.new
        player_hit.load('./app/sound/death.mp3')
        player_hit.start_stream
    end

    def self.level_up
        player_hit = Audite.new
        player_hit.load('./app/sound/level_up.mp3')
        player_hit.start_stream
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