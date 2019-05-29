class User < ActiveRecord::Base
    has_many :reviews
    belongs_to :login

    def add_review(movie, rating, content)
        Review.create(movie_id: movie.id, user_id: self.id, rating: rating, content: content, updated_at: Time.now)
        #update movie rating
        movie.rating = movie.reviews.average(:rating).to_f.round(2)
        movie.save
    end
    
    def write_review
        sleep 0.4
        print "\nWhat movie would you like to review? "
        movie_name = gets.strip
        
        movie = Movie.find_by(name: movie_name)
    
        print "\nPlease rate #{movie.name} between 1 - 5: "
        rating = gets.strip.to_i #validate correct input
    
        print "\nPlease write your review:"
        content = gets.strip
    
        user.add_review(movie, rating, content)
        
        puts "\n"
        puts "Movie Name: #{movie.name}"
        puts "Your Rating: #{rating}"
        puts "Your Review: #{content}"
        puts "\nThank you for taking the time to review!"
    end
end