class CreateProjects < ActiveRecord::Migration[4.2]

  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.datetime :due_date
    end
  end
end
