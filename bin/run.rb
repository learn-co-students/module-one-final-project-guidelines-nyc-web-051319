require_relative '../config/environment'
require_rel '../app'
require_relative '../lib/command_line_interface'


cli = CLI.new

cli.welcome

sleep 0.3

cli.get_user

sleep 0.3
while user_option_1 = gets.chomp.to_i
case user_option_1
  when 1
    cli.plan_options
    user_option_2 = gets.chomp.downcase
    case user_option_2
      when "create"
        puts ""
        Plan.new_plan(cli.current_user)
        cli.main_options
      when "view"
        puts ""
        cli.view_planner
        cli.main_options
      when "update"
        puts ""
        cli.prompt_user_for_plan
        plan_to_update = gets.chomp
        cli.prompt_user_for_change
        thing_to_update = gets.chomp.to_i
        cli.make_changes(thing_to_update, plan_to_update)
        cli.main_options
      when "delete"
        puts ""
        cli.delete_prompt
        cli.main_options
      when "back"
        puts ""
        cli.main_options
      else
        cli.error_message
        cli.main_options
    end
  when 2
    cli.activity_options
    user_option_3 = gets.chomp.downcase
    case user_option_3
      when "create"
        puts ""
        Activity.new_activity
        cli.main_options
      when "view"
        puts ""
        Activity.show_all_by_name
        cli.main_options
      when "top"
        puts ""
        Activity.top_rated
        cli.main_options
      when "back"
        puts ""
        cli.main_options
      else
        cli.error_message
        cli.main_options
    end
  when 3
    cli.location_options
    user_option_4 = gets.chomp.downcase
    case user_option_4
      when "create"
        puts ""
        Location.new_location
        puts "Location created!"
        cli.main_options
      when "view"
        puts ""
        Location.show_all_by_name
        cli.main_options
      when "number"
        puts ""
        Location.num_of_activities_by_location
        cli.main_options
      when "back"
        puts ""
        cli.main_options
      else
        cli.error_message
        cli.main_options
    end
  when 4
    puts ""
    puts "Goodbye! Enjoy your travels :)"
    puts ""
    cli.exit_message
    break
  else
    puts "Please enter a valid response."
    cli.main_options
  end
end
