class DungeonCrawl < ActiveRecord::Base
  belongs_to :player
  belongs_to :dungeon
end
