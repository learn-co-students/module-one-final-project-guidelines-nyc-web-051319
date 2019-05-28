class CreateCommits < ActiveRecord::Migration[4.2]

  def change
    create_table :commits do |t|
      t.string :commit_message
      t.datetime :commit_date
      t.boolean :on_time
      t.integer :user_id
      t.integer :project_id
    end
  end
end
