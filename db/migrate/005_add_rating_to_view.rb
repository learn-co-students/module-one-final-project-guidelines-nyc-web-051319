class AddRatingToView < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :rating, :string
  end
end
