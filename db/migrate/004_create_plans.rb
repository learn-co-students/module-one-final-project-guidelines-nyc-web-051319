class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :location_id
      t.integer :traveler_id
      t.integer :activity_id
      t.string :date
    end
  end
end
