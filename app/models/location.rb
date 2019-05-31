class Location < ActiveRecord::Base
  has_many :activities

  def self.new_location
    puts "What is the new location?"
    location_name = gets.chomp.split.map(&:capitalize).join(" ")

    Location.create(name: location_name)
  end

  def self.show_all_by_name
    Location.all.map {|location| puts "[#{Location.all.index(location) + 1}] #{location.name}"}
  end

  def self.num_of_activities_by_location
    Location.all.map {|location| puts "[#{Location.all.index(location) + 1}] #{location.name} - #{location.activities.count}"}
  end

  def self.show_activity_and_location
    
  end
end
