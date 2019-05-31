require_relative '../app/models/activity.rb'
require 'pry'

class CLI
  attr_reader :current_user

  def menu
    puts "Which activity would you like to add to your plan?"
    puts ""
    Activity.show_all_by_name
    sleep 1
    puts "---------------------------------------------------"
  end

  def view_plans
    @current_user.plans.each do |plan|
      puts "[#{@current_user.plans.index(plan) + 1}] #{plan.activity.name} - #{plan.date}"
    end
    puts "---------------------------------------------------"
    puts ""
  end

  def view_planner
    puts ""
    view_plans
    puts "Which plan would you like to know the opening and closing times for?"
    a_index = gets.chomp.to_i
    puts ""
    get_opening_and_closing_time(a_index)
    time_left(a_index)
  end

  def get_opening_and_closing_time(a_index)
    puts "#{@current_user.activities.all[a_index - 1].name} opens at #{@current_user.activities.all[a_index - 1].time_open.to_s.split(" ")[1].split(":").shift(2).join(":")} and closes at #{@current_user.activities.all[a_index - 1].time_close.to_s.split(" ")[1].split(":").shift(2).join(":")}"
  end

  def get_user
    puts "Please enter your name:"
    puts ""
    traveler_name = gets.chomp.split.map(&:capitalize).join(" ")
    puts ""
    find_and_set_user(traveler_name)
    puts ""
    main_options
  end

  def main_options
    puts ""
    puts "Which options would you like to view?"
    puts ""
    puts "[1] Plan"
    puts "[2] Activities"
    puts "[3] Locations"
    puts "[4] Quit"
    puts ""
  end

  def plan_options
    puts ""
    puts "[Create] New Plan"
    puts "[View] Plans"
    puts "[Update] Plan"
    puts "[Delete] Plan"
    puts "[Back] To Main Menu"
    puts ""
  end

  def activity_options
    puts ""
    puts "[Create] New Activity"
    puts "[View] Activities"
    puts "[Top] Activities"
    puts ""
  end

  def location_options
    puts ""
    puts "[Create] New Location"
    puts "[View] Locations"
    puts "[Number] of Activities By Location"
    puts ""
  end

  def error_message
    puts ""
    puts "Sorry #{@current_user.name}, thats not an option. Please enter one of the [options] from the menu."
  end

  def find_and_set_user(traveler_name)
    Traveler.all.each do |trav|
      if trav.name == traveler_name
        @current_user = trav
      end
    end
    user_exists?(traveler_name)
  end

  def user_exists?(traveler_name)
    if @current_user == nil
      @current_user = Traveler.create(name: traveler_name)
      puts "Hey #{@current_user.name}, this is your first time here. Welcome!"
    else
      puts "Welcome back #{@current_user.name}!"
    end
  end

  ## Update
  def prompt_user_for_plan
    puts ""
    puts "Which plan would you like to update?"
    puts ""
    view_plans
  end

  def prompt_user_for_change
    puts "What would you like to change?"
    puts "[1] Activity"
    puts "[2] Date"
    puts "---------------------------------------------------"
    puts ""
  end

  def make_changes(thing_to_update, plan_to_update)
    if thing_to_update == 1
      puts "Which activity would you like to do instead?"
      Activity.show_all_by_name
      puts "---------------------------------------------------"
      a_index = gets.chomp.to_i
      new_plan = Plan.new
      new_plan.date = @current_user.plans[plan_to_update.to_i - 1].date
      Activity.all[a_index - 1].plans << new_plan
      @current_user.plans << new_plan
      @current_user.plans[plan_to_update.to_i - 1].delete
      puts ""
      puts "Plan updated!"
    elsif thing_to_update == 2
      puts "Please enter new date: (MM/DD/YYYY)"
      new_date = gets.chomp
      @current_user.plans.update(@current_user.plans[plan_to_update.to_i - 1].id, :date => new_date)
      puts ""
      puts "Date updated!"
    end
  end

  def delete_prompt
    puts "Which activity would you want to delete?"
    puts @current_user.activities.map {|act| "[#{@current_user.activities.index(act) + 1}] #{act.name}"}
    puts "---------------------------------------------------"
    delete
    puts ""
    puts "Plan deleted!"
  end


  def delete
    remove_index = gets.chomp.to_i
    @current_user.plans.all[remove_index -1].delete
  end


  def time_left(a_index)
    act_hour = @current_user.activities.all[a_index - 1].time_close.to_s.split(" ")[1].split(":")[0].to_i
    act_min = @current_user.activities.all[a_index - 1].time_close.to_s.split(" ")[1].split(":")[1].to_i
    now_hour = Time.now.to_s.split(" ")[1].split(":")[0].to_i
    now_min = Time.now.to_s.split(" ")[1].split(":")[1].to_i

    if act_hour < 6
      act_hour += 12
      now_hour -= 11
      if act_min - now_min == 0
        now_hour += 1
        puts "There are #{(now_hour - act_hour).abs} hour(s) and 0 minute(s) left"
      end
      puts "There are #{(now_hour - act_hour).abs} hour(s) and #{(60 - now_min).abs} minute(s) left"
    else
    puts "There are #{(act_hour - now_hour).abs} hour(s) and #{(act_min - now_min).abs} minute(s) left"
    end
  end

  def welcome
    puts "Welcome to your Travel Planner"
  end

  def exit_message
    puts "Built by"
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
  end
end
