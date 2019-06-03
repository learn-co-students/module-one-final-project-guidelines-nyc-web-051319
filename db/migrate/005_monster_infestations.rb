class MonsterInfestations < ActiveRecord::Migration[5.0]
  def change
    create_table :monster_infestations do |t|
      t.integer :dungeon_id
      t.integer :monster_id
    end
  end
end
