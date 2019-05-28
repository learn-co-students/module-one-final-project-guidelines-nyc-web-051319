class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :name
    end
  end
end
