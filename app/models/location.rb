class Location < ActiveRecord::Base
  has_many :activities

  def self.new_location
    puts "What is the new location?"
    location_name = gets.chomp.split.map(&:capitalize).join(" ")

    Location.create(name: location_name)
  end
end
