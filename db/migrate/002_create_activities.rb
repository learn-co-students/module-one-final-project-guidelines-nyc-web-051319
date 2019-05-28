class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.integer :rating
      t.time :time_open
      t.time :time_close
      t.integer :location_id
    end
  end

end
