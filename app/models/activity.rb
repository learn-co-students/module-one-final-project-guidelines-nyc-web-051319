class Activity < ActiveRecord::Base
  has_many :plans
  has_many :travelers , through: :plans

  def self.new_activity
    puts "Please enter a name:"
    name = gets.chomp.split.map(&:capitalize).join(" ")
    puts "Please enter a description:"
    description = gets.chomp.split.map(&:capitalize).join(" ")
    puts "Please enter a rating (0 ~ 5):"
    rating = gets.chomp.split.map(&:capitalize).join(" ")
    puts "Please enter time open: (HH:MM:SS 24H)"
    time_open = gets.chomp.split.map(&:capitalize).join(" ")
    puts "Please enter time close: (HH:MM:SS 24H)"
    time_close = gets.chomp.split.map(&:capitalize).join(" ")

    new_act = Activity.create(name: name, description: description, rating: rating, time_open: time_open, time_close: time_close)

    puts "Activity created!"
    new_act
  end

  def set_location(new_act)
    puts "Where is this activity located?"
    puts "1. View Locations"
    puts "2. Add New Location"
    user_input = gets.chomp
    case user_input
      when "1"
        Location.all.map {|location| puts "#{Location.index(location) + 1}. #{location.name}"}
        puts "Please enter location to assign to newly created activity:"
        location = gets.chomp
        Location.all.each do |location|
          if location.id == (Location.index(location) - 1)
            location.activities << new_act
          end
        end
        puts "Location set!"
      when "2"
        new_location = Location.new_location
        new_location.activity << new_act
        puts "New location set!"
    end
  end

end
