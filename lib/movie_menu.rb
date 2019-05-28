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
        movie_name = gets.strip#.downcase #name in lowercase
        #Movie.where("lower(name)=?", "coco").first
        Movie.find_by(name: movie_name)
    
    when "2"
        puts "Please enter rating"
        rating = gets.strip

        #get reviews with 
    end
end