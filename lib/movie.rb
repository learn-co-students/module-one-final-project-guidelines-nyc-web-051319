class Movie < ActiveRecord::Base
    has_many :reviews
    has_many :genres, through: :movie_genres
    has_many :movie_genres

    
    def print_latest_review
      #prints last updated one
      last_updated_review = self.reviews.order(updated_at: :desc).first
      if !last_updated_review
        puts "\nBe the first one to review #{self.name}!".light_yellow
      else
        user_name = User.find(last_updated_review.user.id).name
        puts "\n"
        puts "\nMost Recent Review".blue
        puts "==============================".blue
        print "\nReviewed By: ".green
        puts "#{user_name}"

        print "\nUpdated At: ".green
        puts "#{last_updated_review.short_updated_date_with_time}"

        print "\n#{user_name}'s Rating: ".green
        print rating_to_eggplants(last_updated_review.rating)
        print " (#{last_updated_review.rating})"
        puts "\n"
        print "\nWhat #{user_name} has to say about #{self.name}: ".green
        print "\"#{last_updated_review.content}\""
        puts "\n\n"
        puts "==============================".blue
      end
    end

    def self.print_movies_by_rating(rating)
      matched_movies = Movie.where('rating >= ?', rating).order(rating: :desc)
      
      if matched_movies.empty?
        puts "No movies found with rating #{rating} or greater.".red
      else
        puts "\n#{matched_movies.count} Movie(s) Found With Rating #{rating} or Greater:".green
        puts "========================================".blue
        matched_movies.each_with_index do |movie, index|
          puts "#{index + 1}. #{movie.name} (#{movie.long_release_date}) - Rating: #{movie.rating}"
        end
      end
    end

    def long_release_date
      self.release_date.strftime("%B %d, %Y")
    end

    def release_year
      self.release_date.strftime("%Y")
    end
end
