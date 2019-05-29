class Movie < ActiveRecord::Base
    has_many :reviews
    has_many :genres, through: :movie_genres
    has_many :movie_genres

    #def average_rating
      #  self.reviews.average(:rating)to_f.round(2)     
    #end

    def self.get_movies_by_rating(rating)
    end
    
    def print_latest_review
      #prints last updated one
      last_updated_review = self.reviews.order(updated_at: :desc).first

      puts "\nMost Review Review"
      puts "\n"
      puts "\nRating: #{last_updated_review.rating}"
      puts "\nReviewed By: #{User.find(last_updated_review.user.id).name}"
      puts "\nUpdated At: #{last_updated_review.updated_at.strftime("%m/%d/%y %I:%M%p")}"
      puts "\n"
      print last_updated_review.content
    end
end
