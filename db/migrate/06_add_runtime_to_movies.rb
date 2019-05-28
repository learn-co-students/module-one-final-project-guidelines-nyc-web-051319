class AddRuntimeToMovies < ActiveRecord::Migration[4.2]
    def change
        add_column :movies, :runtime, :integer
    end
end