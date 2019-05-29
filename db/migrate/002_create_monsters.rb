class CreateMonsters < ActiveRecord::Migration[5.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :type
      t.integer :hp
      t.integer :dmg
      t.boolean :alive
    end
  end
end
