class MonsterInfestation < ActiveRecord::Base
  belongs_to :dungeon
  belongs_to :monster
end
