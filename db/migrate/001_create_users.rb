class CreateUsers < ActiveRecord::Migration[4.2]

  def change
    create_table :users do |t|
      t.string :name
      t.integer :teacher_id
    end
  end
end
