require_relative '../config/environment'
require_rel '../app'

# puts "===================================================================================="
#
# puts "       ----  ---       ---      -----------      ------------           ------"
# puts "    ----     ---       ---      ------------     ------------         ----  ----"
# puts "  --         ---       ---      ---        ---        --            ----       ---"
# puts "  --         ---       ---      ---        ---        --            ----"
# puts "  --         ---       ---      ---       ---         --            -----"
# puts "  --         -------------      -----------           --             -----"
# puts "  --         -------------      ----------            --                -----"
# puts "  --         -------------      ---     ---           --                  -----"
# puts "  --         ---       ---      ---      ---          --                   -----"
# puts "  ----       ---       ---      ---       ---         --          ----      -----"
# puts "   ----      ---       ---      ---        ---   ------------       ----   -----"
# puts "       ----  ---       ---      ---         ---  ------------         ------"
#
# puts "===================================================================================="
# sleep 2

puts "Please enter your name:"
#need a method that finds user by name
#if name is in database
#puts welcome back
traveler_name = gets.chomp.split.map(&:capitalize).join(" ")
current_user = ""
Traveler.all.each do |trav|
  if trav.name == traveler_name
    current_user = trav
  end
end

if current_user == ""
  current_user = Traveler.create(name: traveler_name)
end

puts "Hey #{current_user.name}, what would you like to do?"
puts ""
sleep 0.5
puts "Create new plan ('new plan'), view plans ('view plans'), update plan ('update plan'), remove activity/plan ('remove')"
user_option = gets.chomp.downcase
# binding.pry

case user_option
  when "new plan"
    puts "Which activity would you like to add to your plan?"
    puts ""
    sleep 1
      Activity.all.map {|activity| puts activity.name}
      puts "---------------------------------------------------"
      activity_name = gets.chomp.split.map(&:capitalize).join(" ")
      new_plan = Plan.new

      new_plan.date = Time.now.strftime('%y/%m/%d')
      Activity.find_by(name: "#{activity_name}").plans << new_plan
      current_user.plans << new_plan
      binding.pry
  when "update plan"
    puts "Which plan would you like to update?"
    current_user.view_plans
    plan_to_update = gets.chomp
    puts "What would you like to change?"
    puts "1. Activity"
    puts "2. Date"
    thing_to_update = gets.chomp.to_i
    if thing_to_update == 1
      puts "Which activity would you like to do instead?"
      Activity.all.map {|activity| puts activity.name}
      puts "---------------------------------------------------"
      activity_name = gets.chomp.split.map(&:capitalize).join(" ")
      new_plan = Plan.new
      new_plan.date = Time.now.strftime('%y/%m/%d')
      Activity.find_by(name: "#{activity_name}").plans << new_plan
      current_user.plans << new_plan
      current_user.plans[plan_to_update.to_i - 1].delete
      puts "Plan updated!"
    elsif thing_to_update == 2
      puts "Please enter new date: (yyyy/mm/dd)"
      new_date = gets.chomp
      Plan.update(current_user.plans[plan_to_update.to_i - 1].id, :date => new_date)
      binding.pry
      puts "Date updated!"
    end
  when "view plans"
    current_user.view_plans
  when "remove"
    puts "The tank is almost full."
  else
    puts "Sorry #{current_user.name}, thats not an option. Please choose one of the following options."
end
