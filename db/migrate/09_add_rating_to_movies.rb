class AddRatingToMovies < ActiveRecord::Migration[4.2]
    def change
        add_column :movies, :rating, :float
    end
end