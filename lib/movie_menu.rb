#BROWSE MOVIES MENU

def selected_movie_menu(movie)
    #Name
    puts "\nName: #{movie.name}"
    #Release Date
    puts "\nRelease Date: #{movie.release_date.strftime("%B %d, %Y")}"

    #Rating
    print "\nRating: "
    print rating_to_eggplants(movie.rating)
    print " (#{movie.rating})"

    #Latest Review
    movie.print_latest_review
end

def movie_menu
    puts "\n BROWSE MOVIES"
    puts "1. Find Movies by Name" #duplicates
    puts "2. Find Movies by Rating" #allow range?
    puts "3. Back to Main Menu"
    print "\nWhat would you like to do? "
    menu_input = gets.strip

    case menu_input
    when "1" #find movies by name
        print "\nPlease enter name of movie: "
        movie_name = gets.strip.downcase #name in lowercase
        matched_movies = Movie.order(release_date: :desc).where("lower(name)=?", movie_name)
        #show movie name ordered by release date
        if matched_movies.empty?
            puts "No movies found for \"#{movie_name}.\""
        else
            puts "\n#{matched_movies.count} movies found with name \"#{movie_name}\""
            matched_movies.each_with_index do |movie, index|
                puts "#{index + 1}. #{movie.name} (#{movie.long_release_date})"
            end
            print "\nPlease select a movie to learn more: "
            selected_movie = gets.strip
            selected_movie_menu(matched_movies[selected_movie.to_i - 1])
        end
        true
    when "2" #find movies by rating
        #returns movies greater than selection
        print "Please enter rating: "
        rating = gets.strip.to_i
        Movie.print_movies_by_rating(rating)
        true
    when "3"
        false #go back to main menu
    end
end