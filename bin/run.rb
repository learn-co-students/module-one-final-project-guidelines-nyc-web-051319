
require_relative '../config/environment'

def main
    system "clear"
    leave_app = false
    logged_in = false
    user = nil
    menu_input = "0"
    clear = true

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
               
            end
            menu_input = '0'
        when "2" #latest 10 releases
            see_more = true
            
            while(see_more)
                puts "\nLatest 10 Releases"
                latest_10_releases = Movie.print_10_movies_by('release_date')
                see_more = see_more_menu(latest_10_releases)
              
            end
            menu_input = '0'
        when "3" #browse movies > goes to browse submenu
          
            go_movie_menu = true
            while(go_movie_menu)
                go_movie_menu = movie_menu
            end
            menu_input = '0'
        when "4" #write a reivew
           
            if logged_in #check if user is logged in
                movie = find_movie_by_name_menu
                if movie == -1
                    menu_input = '0'
                elsif movie
                    valid_input = false
                    input_try = 0
                    while(!valid_input && input_try < 3)
                        print "\nPlease rate #{movie.name} (#{movie.release_year}) between 1 - 5: "
                        rating = gets.strip #validate correct input
                        valid_input = valid_number_selection?(rating, 1, 5)
                        puts "\nInvalid Input.  Please enter a number between 1 to 5.".light_yellow if valid_input == false
                        input_try += 1
                    end
                    puts "\nToo many invalid entries. Going back to Main Menu.".red if valid_input == false
                    if valid_input
                        print "\nPlease write your review:"
                        content = gets.strip
                    
                        user.add_review(movie, rating, content)
                        
                        puts "\n"
                        puts "Movie Name: #{movie.name}"
                        puts "Your Rating: #{rating}"
                        puts "Your Review: #{content}"
                        sleep 0.3
                        puts "\nThank you for taking the time to review!".green
                        sleep 0.4
                    end
                    menu_input = '0'
                else
                    #puts "\n No movies found with that name.".light_red
                    menu_input = '0'
                     sleep 0.4
                end
            else
                puts "\nPlease Login before leaving a review.".light_yellow
                menu_input = "5"
                 sleep 0.4
            end
        when "5" #check login
            
            if logged_in ##see my review
                user.all_of_my_reviews
                 sleep 0.4
            else
                user = Login.login_checker
                logged_in = true if user
            end
            menu_input = '0'
        when "6" #already logs you in
         
            if logged_in ##Log out
                print "\nSee you next time, "
                puts "#{user.name}!".magenta
                user = nil
                logged_in = false
                sleep 0.4
            else
                retry_count = 0
                while(retry_count < 3 && !user && user != '0')
                    user = User.create_new_account
                    retry_count += 1
                end
                if user == '0'
                    user = nil
                elsif user
                    print "\nAccount created. Welcome abroad, "
                    puts "#{user.name}!".magenta
                    logged_in = true 
                   
                else
                    puts "\nYou've entered an invalid email format too many times. Going back to Main Menu.".red
                   
                end
            end
            menu_input = '0'
        when "7"
            sleep 0.4
            system "clear"
            puts "\nGoodbye!!".light_magenta
            leave_app = true
            sleep 0.3
            the_eggplant
        ##WHEN DELETE ACCOUNT
        else
            puts "Invalid input. Please select a number 1 - 7.".red
            menu_input = '0'
        end
    end

end

main
