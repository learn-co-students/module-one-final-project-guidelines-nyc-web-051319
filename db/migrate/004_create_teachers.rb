class CreateTeachers < ActiveRecord::Migration[4.2]

  def change
    create_table :teachers do |t|
      t.string :name
      t.string :password
    end
  end
end
