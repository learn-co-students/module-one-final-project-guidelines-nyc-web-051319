class CreateEpisodes < ActiveRecord::Migration[4.2]
  def change
    create_table :episodes do |t|
      t.string :name
    end
  end
end
