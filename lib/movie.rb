class Movie < ActiveRecord::Base
    has_many :reviews
    has_many :genres, through: :movie_genres
    has_many :movie_genres

end