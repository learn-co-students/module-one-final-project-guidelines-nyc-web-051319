class CreatePlayers < ActiveRecord::Migration[5.0]

    def change
        create_table :players do |t|
            t.string :name
            t.integer :max_hp
            t.integer :current_hp
            t.integer :min_dmg
            t.integer :max_dmg
            t.boolean :alive
            t.integer :level
            t.string :battlecry
            t.integer :accuracy
        end
    end

end
