class Movie < ActiveRecord::Base
    has_many :reviews
    has_many :genres, through: :movie_genres
    has_many :movie_genres

    #def average_rating
      #  self.reviews.average(:rating)to_f.round(2)     
    #end

    def self.get_movies_by_rating(rating)
    end
end
