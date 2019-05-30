class DungeonRun

  def initialize(player, monsters)
    @player = player
    @monsters = monsters
    binding.pry
  end

  def begin_run
    @monsters.each do |monster|
      b = Battle.new(@player, monster)
      b.begin_battle #turns out this begins and ends a round
    end
  end
end
