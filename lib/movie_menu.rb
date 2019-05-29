def rating_to_eggplants(rating)
    if rating <= 1.5 
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
    puts "3. Find Movies by Year"
    puts "4. Most Reviewed Movie"
    puts "5. Most Popular Movie"
    puts "6. Top 5 Movies by Year"

    menu_input = gets.strip

    case menu_input
    when "1"
        puts "Please enter name of movie"
        movie_name = gets.strip.downcase #name in lowercase
        matched_movies = Movie.order(release_date: :desc).where("lower(name)=?", movie_name)
        #show movie name ordered by release date
        if matched_movies.empty?
            puts "No movies found for \"#{movie_name}.\""
        else
            puts "\n#{matched_movies.count} movies found with name \"#{movie_name}\""
            matched_movies.each_with_index do |movie, index|
                puts "#{index + 1}. #{movie.name} (#{movie.release_date.strftime("%B %d, %Y")})"
            end
            puts "\nPlease select a movie to learn more"
            selected_movie = gets.strip
            selected_movie_menu(matched_movies[selected_movie.to_i - 1])
        end
    
    when "2"
        puts "Please enter rating"
        rating = gets.strip

        #get reviews with 
    end
end