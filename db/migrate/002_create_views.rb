class CreateViews < ActiveRecord::Migration[4.2]
    def change
    create_table :views do |t|
      t.integer :user_id
      t.integer :episode_id
    end
  end
end
