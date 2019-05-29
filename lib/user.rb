class User < ActiveRecord::Base
    has_many :reviews
    belongs_to :login

    def add_review(movie, rating, content)
        Review.create(movie_id: movie.id, user_id: self.id, rating: rating, content: content, updated_at: Time.now)
        #update movie rating
        movie.rating = movie.reviews.average(:rating).to_f.round(2)
        movie.save
    end
    
end