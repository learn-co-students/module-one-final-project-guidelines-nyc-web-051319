
require_relative '../config/environment'

def main
    leave_app = false
    logged_in = false
    user = nil
    menu_input = "0"

    while (!leave_app)
        case menu_input
        when "0"
             #menu_input = '0' for main menu
            puts "\n"
            puts "Welcome to Ripe Eggplant 🍆" #including user name after logged in

            #greets user if logged in
            puts "\nHello, #{user.name}!" if user
            puts "\nChoose from menu below"

            puts "1. Browse Movies"
            puts "3. Write a Review for a Movie"
            puts "4. Log In"
            puts "5. Create an Account"
            #puts "6. Log Out" NEED TO IMPLEMENT
            menu_input = gets.strip
        when "1"
            movie_menu
        when "3" #check login
            if logged_in
                #user = User.find(2)
                puts "What movie would you like to review?"
                movie_name = gets.strip
                movie = Movie.find_by(name: movie_name)

                puts "Please rate #{movie.name} between 1 - 5."
                rating = gets.strip.to_i #validate correct input

                puts "Please input your review."
                content = gets.strip

                user.add_review(movie, rating, content)
               
                puts "\n"
                puts "Movie Name: #{movie.name}"
                puts "Your Rating: #{rating}"
                puts "Your Review: #{content}"
                puts "\nThank you for taking the time to review!"

                menu_input = "0"
            else
                puts "Please login"
                menu_input = "4"
            end
        when "4" #check login
            puts "\n PLEASE LOG IN"
            pwd_retry = 0
            puts "\nPlease enter your email" #check if email is in database
            email = gets.strip
            login = Login.find_by(email: email)
            if login
                while(pwd_retry < 3 && !logged_in)
                    puts "Please enter your password"
                    password = gets.strip
                    if login.password == password
                        logged_in = true
                        user = User.find(login.user_id)
                        menu_input = "0"
                    else
                        puts "Incorrect password. Please try again."
                        pwd_retry += 1
                    end
                end
            else #cannot find email
                puts "No account is associated with this email. Please create an account."
                menu_input = "5" 
            end
            if pwd_retry >= 3
                puts "Too many incorrect login attempts. Going back to main menu."
                menu_input = "0"
            end
        when "5" #already logs you in
            puts "\n CREATING NEW ACCOUNT"
            puts "\n"
            puts "Please enter email"
            email = gets.strip.downcase  #duplicate email
        
            if Login.check_existing_login(email)
                puts "An account already exists for this email. Please log into your account with your email. Going back to main menu."
                menu_input = "4"
            else
                user = Login.create_account(email)
                menu_input = "0"
            end
        when "9"
            leave_app = true

        ##WHEN DELETE ACCOUNT
        end



    end

end

main
