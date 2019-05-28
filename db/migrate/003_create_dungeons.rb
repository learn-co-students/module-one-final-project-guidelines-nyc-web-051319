class CreateDungeons < ActiveRecord::Migration[5.2]
  def change
    create_table :dungeons do |t|
      t.string :name
      t.string :difficulty
    end
  end
end
