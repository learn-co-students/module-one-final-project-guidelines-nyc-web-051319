require 'uri'

def main_menu(user)
    
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
    puts "Please select an option from below [1 - 7]"
    puts "============================================".light_magenta
    puts "\n"
    puts "1. Top 10 Movies of All Time".magenta
    puts "2. Latest 10 Releases"
    puts "3. Browse Movies".magenta
    puts "4. Write a Review for a Movie"
    if !user
        puts "5. Log In".magenta 
        puts "6. Create an Account"
    else
        puts "5. See My Reviews".magenta
        puts "6. Log Out"
    end
    puts "7. Leave App".magenta
end

def see_more_menu(list_of_movies)
    print "\nDo you want to see more about one of the movies above? [y/n] "
    answer = gets.strip.downcase

    case answer
    when 'y', 'yes'
            print "\nWhich movie do you want more info on? (1 - 10) "
            movie_num = gets.strip
            if valid_number_selection?(movie_num, 1, 10)
                selected_movie_menu(list_of_movies[movie_num.to_i - 1])
            else
                puts "Invalid option. Please selection 1 - 10 from above.".red
            end
        true
    when 'n', 'no'
        puts "Okay. Going back to main menu.".blue
        false
    else
        puts "Invalid input. Please select y or n.".red
        true
    end
     sleep 0.4
end

def rating_to_eggplants(rating)
    if rating == 0.0
        "No one review this movie yet."
    elsif rating <= 1.5 
        "🍆"
    elsif rating <= 2.5
        "🍆🍆"
    elsif rating <= 3.5
        "🍆🍆🍆"
    elsif rating <= 4.5
        "🍆🍆🍆🍆"
    elsif rating <= 5
        "🍆🍆🍆🍆🍆"
    end
end

def valid_email?(email)
    email.match(URI::MailTo::EMAIL_REGEXP).present?
end

def valid_number_selection?(selection, min, max)
    valid_options = (min..max).to_a.map {|num| num.to_s}
    valid_options.include?(selection)
end

def the_eggplant
    eggplant = <<-EGG
                         🥬 🥬
                           🥬 🥬
                       🥬 🥬 🥬 🥬
                   🥬 🥬 🥬 🥬 🥬
              🥬 🥬 🥬 🥬 🥬 🥬
          🥬 🥬 🥬 🥬 🥬 🥬 🥬
      🥬 🥬 🥬 🥬 🥬 🥬 🥬 🥬 🥬
        🍆 🍆 🍆🍆 🍆🍆🍆🍆
      🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆
      🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆 🍆
      🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆🍆
       🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆
        🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆
         🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆
          🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆
             🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆
              🍆 🍆  🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆
               🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆
                🍆🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆 🍆
                  🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆🍆
                    🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆🍆
                      🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆
                        🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆
                          🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆
                           🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆
                            🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆
                                🍆🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆
                                   🍆🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆
                                    🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆🍆
                                       🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆
                                        🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆
                                          🍆 🍆 🍆 🍆 🍆  🍆 🍆 🍆 🍆 🍆
                                            🍆 🍆 🍆🍆 🍆 🍆🍆 🍆 🍆 🍆
                                              🍆 🍆 🍆 🍆 🍆 🍆 🍆 🍆
                                                  🍆 🍆 🍆 🍆 🍆 🍆
    EGG
    puts "#{eggplant}"
  end
