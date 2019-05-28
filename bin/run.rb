
require_relative '../config/environment'



def main
    puts "Welcome to Ripe Eggplant\n"

    puts "Choose from menu below\n"

    puts "1. Browse Movies"
    puts "5. Create an Account"
    menu_input = gets.strip.to_i
    #binding.pry
    case menu_input
    when 1
        movie_menu
    when 5
        create_account
    end

end

main
