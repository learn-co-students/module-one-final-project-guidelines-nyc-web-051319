#BROWSE MOVIES MENU

def selected_movie_menu(movie)
    #Name
    print "\nMovie Name: ".green
    puts "#{movie.name}"

    #Genres
    print "\nGenres: ".green
    movie.genres.each do |genre| 
        print "#{genre.genre}"
        print ", " unless genre == movie.genres.last
    end
    #Release Date
    print "\nRelease Date: ".green
    puts "#{movie.long_release_date}"

    #Rating
    print "\nAverage Rating: ".green
    print rating_to_eggplants(movie.rating)
    puts " (#{movie.rating})"

    #Latest Review
    movie.print_latest_review
    movie
end

def find_movie_by_name_menu
    selected_movie = nil
    print "\nPlease enter name of movie: "
    movie_name = gets.strip.downcase #name in lowercase
    matched_movies = Movie.order(release_date: :desc).where("lower(name)=?", movie_name)
    #show movie name ordered by release date
    if matched_movies.empty?
        puts "No movies found for \"#{movie_name}.\"".red
    else
        puts "\n#{matched_movies.count} movies found with name \"#{movie_name}\"".green
        puts "===================================".blue
        matched_movies.each_with_index do |movie, index|
            puts "#{index + 1}. #{movie.name} (#{movie.long_release_date})"
        end
        puts "0. Go back to Browse Movies."
        valid_option = false
        while(!valid_option)
            print "\nPlease select a movie: "
            movie_picked = gets.strip.to_i
            if movie_picked <= matched_movies.count && movie_picked > 0
                selected_movie = matched_movies[movie_picked - 1]
                selected_movie_menu(selected_movie)
                valid_option = true
            elsif movie_picked == 0
                selected_movie = -1
                valid_option = true
            else
                puts "\nInvalid option. Please selection a number from above.".red
            end
        end
    end
    selected_movie
end

def movie_menu
    puts "\n========== Browse Movies ========== ".blue
    puts "1. Find Movies by Name" #duplicates
    puts "2. Find Movies by Rating" #allow range?
    puts "3. Find Movies by Genre"
    puts "4. Back to Main Menu"
    print "\nWhat would you like to do? "
    menu_input = gets.strip

    case menu_input
    when "1" #find movies by name
        sleep 0.3
        find_movie_by_name_menu
        true
    when "2" #find movies by rating
        #returns movies greater than selection
        sleep 0.3
        print "\nPlease enter rating: "
        rating = gets.strip
        if ['1','2','3','4','5'].include?(rating)
            Movie.print_movies_by_rating(rating.to_i)
        else
            puts "Invalid Rating. Please input a rating between 1 to 5.".red
        end
        true
    when "3"
        sleep 0.3
        puts "\n========== List of Genres ==========".blue
        Genre.all.each do |genre|
            puts "#{genre.genre}"
        end
        print "\nPlease enter genre you want to search by: "
        genre_name = gets.strip 
        genre = Genre.find_by("lower(genre) LIKE ?", "%#{genre_name}%")#get genre id
        Movie.print_movies_by_genre(genre)
        true
    when "4"
        false #go back to main menu
    else
        puts "Invalid input. Please select options 1 - 4.".red
        true
    end
end