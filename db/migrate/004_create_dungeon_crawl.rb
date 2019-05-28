class CreateDungeonCrawls < ActiveRecord::Migration[5.2]
  def change
    create_table do |t|
      t.integer :player_id
      t.integer :dungeon_id
    end
  end
end
