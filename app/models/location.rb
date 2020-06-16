class Location < ActiveRecord::Base
  has_many :activities

  def self.new_location
    puts "What is the new location?"
    location_name = gets.chomp.split.map(&:capitalize).join(" ")

    Location.create(name: location_name)
  end

  def self.show_all_by_name
    Location.all.map {|location| puts "[#{Location.all.index(location) + 1}] #{location.name}"}
    puts "---------------------------------------------------"
  end

  def self.num_of_activities_by_location
    Location.all.map {|location| puts "[#{Location.all.index(location) + 1}] #{location.name} - #{location.activities.count}"}
    puts "---------------------------------------------------"
  end

  def self.show_activity_and_location
    position = 1
    Location.all.each do |location|
      location.activities.each do |act|
        puts "[#{position}] #{act.name} - #{location.name}"
        position += 1
      end
    end
    puts "---------------------------------------------------"
  end
end
