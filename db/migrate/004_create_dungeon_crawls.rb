class CreateDungeonCrawls < ActiveRecord::Migration[5.0]
  def change
    create_table :dungeon_crawls do |t|
      t.integer :player_id
      t.integer :dungeon_id
    end
  end
end
