class CreateAdventurers < ActiveRecord::Migrations[5.2]

    def change
        create_table :adventurers do |t|
            t.string :name
            t.string :class
            t.integer :hp
            t.integer :weapon_dmg
            t.boolean :alive
        end
    end
    
end