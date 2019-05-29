require_relative '../config/environment'
require_rel '../app'

puts "===================================================================================="

puts "       ----  ---       ---      -----------      ------------           ------"
puts "    ----     ---       ---      ------------     ------------         ----  ----"
puts "  --         ---       ---      ---        ---        --            ----       ---"
puts "  --         ---       ---      ---        ---        --            ----"
puts "  --         ---       ---      ---       ---         --            -----"
puts "  --         -------------      -----------           --             -----"
puts "  --         -------------      ----------            --                -----"
puts "  --         -------------      ---     ---           --                  -----"
puts "  --         ---       ---      ---      ---          --                   -----"
puts "  ----       ---       ---      ---       ---         --          ----      -----"
puts "   ----      ---       ---      ---        ---   ------------       ----   -----"
puts "       ----  ---       ---      ---         ---  ------------         ------"

puts "===================================================================================="
sleep 2

puts "Please write your name"
#need a method that finds user by name
#if name is in database
#puts welcome back
traveler_name = gets.chomp
trav = Traveler.new(name: traveler_name)



puts "Hey #{traveler_name}, what would you like to do?"
puts ""
sleep 1
puts "Create new plan ('new plan'), view plan ('view plan'), update plan ('update plan'), remove activity/plan ('remove')"
user_option = gets.chomp.downcase
# binding.pry

case user_option
  when "new plan"
    puts "Which activity would you like to add to your plan?"
    puts ""
    sleep 1
      Activity.all.map {|activity| puts activity.name}
      puts "---------------------------------------------------"
      activity_name = gets.chomp.downcase
      Activity.all.each do |act|
        if activity_name == act.name
          trav.plans << act
        end
      end
      puts trav.plans
  when "update plan"
    puts "The tank is almost empty. Quickly, find a gas station!"
  when "view plan"
    trav.view_plans
  when "remove"
    puts "The tank is almost full."
  else
    puts "Sorry #{traveler_name}, thats not an option. Please choose one of the following options."
end
