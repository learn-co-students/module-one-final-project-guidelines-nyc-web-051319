class Plan < ActiveRecord::Base
  belongs_to :traveler
  belongs_to :activity

  def self.new_plan(current_user)
    puts "Please select an activity:"
    puts ""
    Activity.show_all_by_name
    new_plan = self.new
    puts ""
    activity_index = gets.chomp.to_i
    puts ""
    puts "Please enter date: (MM/DD/YYYY)"
    activity_date = gets.chomp
    new_plan.date = activity_date
    Activity.all[activity_index - 1].plans << new_plan
    current_user.plans << new_plan
    puts ""
    puts "Plan created!"
  end
end
