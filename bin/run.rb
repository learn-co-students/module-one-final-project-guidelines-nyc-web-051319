
require_relative '../config/environment'

def main_menu(user)
    sleep 0.3
    #menu_input = '0' for main menu
    puts "\n\n"
    puts " 🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆  " .on_white.blink
    puts " 🍆                              🍆  ".on_white.blink
    print " 🍆 ".on_white.blink
    print " Welcome to Ripe Eggplant ".on_white.light_magenta
    puts "   🍆  ".on_white.blink 
    puts " 🍆                              🍆  ".on_white.blink
    puts " 🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆🍆  ".on_white.blink
    puts "\n\n" #including user name after logged in

    #greets user if logged in
    puts "\nHello, " + "#{user.name}!".magenta if user
    puts "\n"
    puts "   Choose from menu below   ".light_magenta.on_white
    puts "\n"
    puts "1. Top 10 Movies of All Time".magenta
    puts "2. Latest 10 Releases"
    puts "3. Browse Movies".magenta
    puts "4. Write a Review for a Movie"
    puts "5. Log In".magenta
    puts "6. Create an Account"
    puts "7. Leave App".magenta
    #puts "6. Log Out" NEED TO IMPLEMENT
end

def top_10_movies
    sleep 0.4
    puts "\nTop 10 Movies of All Time"
    puts "========================================".blue
    Movie.order(rating: :desc).limit(10).each_with_index do |movie, index|
        puts "#{index + 1}. #{movie.name} (#{movie.release_year}) - Rating: #{movie.rating}"
    end
    puts "========================================".blue
end

def latest_10_movies
    sleep 0.4
    puts "\nLatest 10 Releases"
    puts "========================================".blue
    Movie.order(release_date: :desc).limit(10).each_with_index do |movie, index|
        puts "\n#{index + 1}. #{movie.name} - Relase Date: #{movie.long_release_date}"
        puts "    Rating: #{movie.rating}"
    end
    puts "========================================".blue
end

def main
    leave_app = false
    logged_in = false
    user = nil
    menu_input = "0"

    while (!leave_app)
        case menu_input
        when "0"
            main_menu(user)
            print "\nWhat would you like to do? "
            menu_input = gets.strip
        when "1"
            top_10_movies
            menu_input = '0'
        when "2"
            latest_10_movies
            menu_input = '0'
        when "3"
            sleep 0.4
            go_movie_menu = true
            while(go_movie_menu)
                sleep 0.4
                go_movie_menu = movie_menu
            end
            menu_input = '0'
        when "4" #check login
            sleep 0.4
            if logged_in
                sleep 0.3
                
                movie = find_movie_by_name_menu
                if movie
                    print "\nPlease rate #{movie.name} (#{movie.release_year}) between 1 - 5: "
                    rating = gets.strip.to_i #validate correct input
                
                    print "\nPlease write your review:"
                    content = gets.strip
                
                    user.add_review(movie, rating, content)
                    
                    puts "\n"
                    puts "Movie Name: #{movie.name}"
                    puts "Your Rating: #{rating}"
                    puts "Your Review: #{content}"
                    sleep 0.3
                    puts "\nThank you for taking the time to review!".blue
                    menu_input = '0'
                else
                    puts "\n No movies found with that name.".red
                    menu_input = '4'
                end
            else
                sleep 0.4
                puts "\nPlease Login before leaving a review.".light_yellow
                menu_input = "5"
            end
        when "5" #check login
            sleep 0.4
            puts "\n================= LOGIN =================".blue
            pwd_retry = 0
            print "\nPlease enter your email: " #check if email is in database
            email = gets.strip
            has_email = Login.find_by(email: email)
            if has_email
                while(pwd_retry < 3 && !logged_in)
                    print "\nPlease enter your password: "
                    password = gets.strip
                    if has_email.password == password
                        logged_in = true
                        user = User.find(has_email.user_id)
                        puts "\nLogin Successful".blue
                        sleep 0.5
                        menu_input = "0"
                    else
                        puts "Incorrect password. Please try again.".light_red
                        pwd_retry += 1
                    end
                end
            else #cannot find email
                puts "No account is associated with this email. Please create an account."
                menu_input = "6" 
            end
            if pwd_retry >= 3
                puts "Too many incorrect login attempts. Going back to main menu.".light_red
                menu_input = "0"
            end
        when "6" #already logs you in
            sleep 0.4
            puts "\n ========== CREATING NEW ACCOUNT ==========".blue
            print "\nPlease enter your email: "
            email = gets.strip.downcase  #duplicate email
        
            if Login.check_existing_login(email)
                puts "\nAn account already exists for this email. Please log into your account with your email.\nGoing back to main menu.".red
                menu_input = "0"
            else
                user = Login.create_account(email)
                menu_input = "0"
            end
        when "7"
            sleep 0.2
            puts "Goodbye!!"
            leave_app = true
        ##WHEN DELETE ACCOUNT
        end
    end

end

main
