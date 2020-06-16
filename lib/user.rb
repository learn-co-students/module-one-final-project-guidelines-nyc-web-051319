class User < ActiveRecord::Base
    has_many :reviews
    belongs_to :login

    def add_review(movie, rating, content)
         
        Review.create(movie_id: movie.id, user_id: self.id, rating: rating, content: content, updated_at: Time.now)
        #update movie rating
        movie.rating = movie.reviews.average(:rating).to_f.round(2)
        movie.save
    end
    
    def all_of_my_reviews
         
        puts "\n========== My Reviews ==========".green
        Review.where(user_id: self.id).order(updated_at: :asc)
        .each_with_index do |review, index|
            movie = Movie.find(review.movie_id)
            puts "\n#{index + 1}.    Movie Name: #{movie.name} (#{movie.release_year})"
            puts "      Rating: #{rating_to_eggplants(review.rating)} (#{review.rating})"
            puts "      Content: #{review.content}"
            puts "\n========================================".blue
        end
    end

    def self.create_new_account
  
        user = nil
        puts "\n ========== CREATING NEW ACCOUNT ==========".blue
        print "\nPlease enter your email or 0 to go back: "
        email = gets.strip.downcase  #duplicate email
        if email != '0'
            if valid_email?(email)
                if Login.check_existing_login(email)
                    puts "\nAn account already exists for this email. Please log into your account with your email.\nGoing back to main menu.".red
                else
                    print "\nNo email associated with this account. Do you want to create a new account? [y/n]  ".light_yellow
                    ans = gets.strip
                    
                    case ans
                    when "y"
                        puts "\nAwesome! Let's get you setup right away!".green
                        user = Login.create_account(email)
                    when "n"
                        puts "No problem. Going back to main menu."
                    else
                        puts "\nInvalid input. Going back to main menu.".red
                    end
                end
            else
                puts "Invalid email format. Please input a valid email.".light_yellow
            end
        else
            user = '0'
        end
        user
    end
    
end