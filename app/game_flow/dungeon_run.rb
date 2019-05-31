class DungeonRun

  def initialize(player, monsters)
    @player = player
    @monsters = monsters
  end

  def begin_run
    # @monsters.each do |monster|
      # binding.pry
      b = Battle.new(@player, @monsters)
      b.begin_battle #turns out this begins and ends a round
    # end
  end
end
