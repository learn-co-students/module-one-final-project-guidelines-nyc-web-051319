
require_relative '../config/environment'

def main
    leave_app = false
    logged_in = false
    user = nil
    menu_input = "0"

    while (!leave_app)
        case menu_input
        when "0" #main menu
            main_menu(user)
            print "\nWhat would you like to do? "
            menu_input = gets.strip
        when "1" #top 10 movies of all time
            see_more = true
            
            while(see_more)
                puts "\nTop 10 Movies of All Time"
                top_10_movie_list = Movie.print_10_movies_by('rating')
                see_more = see_more_menu(top_10_movie_list)
                sleep 0.4
            end
            menu_input = '0'
        when "2" #latest 10 releases
            see_more = true
            
            while(see_more)
                puts "\nLatest 10 Releases"
                latest_10_releases = Movie.print_10_movies_by('release_date')
                see_more = see_more_menu(latest_10_releases)
                sleep 0.4
            end
            menu_input = '0'
        when "3" #browse movies > goes to browse submenu
            sleep 0.4
            go_movie_menu = true
            while(go_movie_menu)
                sleep 0.5
                go_movie_menu = movie_menu
            end
            menu_input = '0'
        when "4" #write a reivew
            sleep 0.4
            if logged_in #check if user is logged in
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
                    puts "\nThank you for taking the time to review!".green
                    menu_input = '0'
                elsif movie == -1
                    menu_input = '4'
                else
                    puts "\n No movies found with that name.".light_red
                    menu_input = '4'
                end
            else
                sleep 0.4
                puts "\nPlease Login before leaving a review.".light_yellow
                menu_input = "5"
            end
        when "5" #check login
            sleep 0.4
            if logged_in
                puts "You are already logged in. Going back to main menu.".light_yellow
                menu_input = '0'
            else
                puts "\n================= LOGIN =================".blue
                pwd_retry = 0
                email_retry = 0
                print "\nPlease enter your email: " #check if email is in database
                email = gets.strip
                while(!valid_email?(email) && email_retry < 3)
                        print "\nIncorrect email format. Please enter a valid email: ".light_yellow
                        email = gets.strip
                        email_retry += 1
                end
                if !valid_email?(email)
                    puts "\nYou've entered an incorrect email format too many times. Going back to Main Menu.".light_red
                    menu_input = '0'
                else
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
                        puts "No account is associated with this email. Please create an account.".light_red
                        menu_input = "6" 
                    end
                    if pwd_retry >= 3
                        puts "Too many incorrect login attempts. Going back to main menu.".light_red
                        menu_input = "0"
                    end
                end
            end
        when "6" #already logs you in
            sleep 0.4
            valid_email = false
            while(!valid_email)
                puts "\n ========== CREATING NEW ACCOUNT ==========".blue
                print "\nPlease enter your email: "
                email = gets.strip.downcase  #duplicate email
                valid_email = valid_email?(email)
                if valid_email
                    if Login.check_existing_login(email)
                        puts "\nAn account already exists for this email. Please log into your account with your email.\nGoing back to main menu.".red
                        menu_input = "0"
                    else
                        print "\nNo email associated with this account. Do you want to create a new account? [y/n]  ".light_yellow
                        ans = gets.strip
                        
                        case ans
                        when "y"
                            puts "\n Awesome! Let's get you setup right away!".green
                            user = Login.create_account(email)
                        when "n"
                            puts "No problem. Going back to main menu."
                        else
                            puts "\nInvalid input. Going back to main menu.".red
                        end
                        menu_input = "0"
                    end
                else
                    puts "Invalid email format. Please input a valid email.".red
                end
            end
        when "7"
            sleep 0.2
            puts "Goodbye!!".light_magenta
            leave_app = true
        ##WHEN DELETE ACCOUNT
        else
            puts "Invalid input. Please select a number 1 - 7.".red
            menu_input = '0'
        end
    end

end

main
