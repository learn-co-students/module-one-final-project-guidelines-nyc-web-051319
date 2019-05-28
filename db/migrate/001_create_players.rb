class CreateAdventurers < ActiveRecord::Migrations[5.2]

    def change
        create_table :players do |t|
            t.string :name
            t.integer :hp
            t.integer :dmg
            t.boolean :alive
        end
    end

end
