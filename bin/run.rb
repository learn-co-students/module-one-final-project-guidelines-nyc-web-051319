require_relative '../config/environment'

class ApplicationController

  def call
    main
  end

  def main
    puts "Welcome to Your CLI Student Database!!! What's your name?"
    username = gets.strip
    puts "Welcome #{username}, what would you like to do? "
    lists
  end
  def lists
    puts ""
    puts "1. List of Students"
    puts ""
    puts "2. List of Projects"
    input = gets.strip

    case input
    when "1"
      puts User.all_student_names
      puts ""
      puts ""
      students
    when "List of Students"
      puts User.all_student_names
      puts ""
      puts ""
      students
    when "List of Projects"
      puts Project.all_project_names
      puts ""
      puts ""
      projects
    when "2"
      puts Project.all_project_names
      puts ""
      puts ""
      projects
    else
      puts "Invalid input. Please try again"
      input = gets.strip
    end

  end

  def students
    puts "What would you like to find out?"
    puts ""
    puts "1. List of projects for a student"
    puts ""
    puts "2. Student with most commits"
    puts ""
    puts "3. Student with least commits"
    puts ""
    puts "4. Add student"
    puts ""
    puts "5. Delete student"
    puts ""
    puts "6. Go back to Main Menu"
    new_input = gets.strip

    case new_input
    when "1"
      puts "Which student's projects would you like to see?"
      name = gets.strip
      person = User.find_by(name: name)
      puts person.projecttitles
      puts "Would you like to see which projects are submitted on time or late?"
      answer = gets.strip
      if answer == "on time"
        puts person.on_time_completed_projects
      elsif answer == "late"
        puts person.late_completed_projects
      end
      students
    when "2"
      puts User.busiest
      students
    when "3"
      puts User.laziest
      students
    when "4"
      puts "What's the name of the student?"
      name = gets.strip
      User.create(name: name)
      puts "Student #{name} has been added!"
      lists
    when "5"
      puts "What's the name of the student you want to delete?"
      name = gets.strip
      dead_student = User.find_by(name: name)
      dead_student.delete_user
      puts "Student #{name} has been deleted!"
      lists
    when "6"
      lists
    end
  end

  def projects
    puts "What would you like to find out?"
    puts "1. Details of a Project"
    puts "2. Project with most commits"
    puts "3. Project with least commits"
    puts "4. Add a project"
    puts "5. Delete a project"
    puts "6. Go back to Main Menu"
    new_input = gets.strip

    case new_input
    when "1"
      puts "which project would you like to see details for?"
      title = gets.strip
      project = Project.find_by(title: title)
      puts project.title
      puts "Completed by #{project.usernames}"
      puts project.due_date
      projects
    when "2"
      puts Project.least_committed_project
      projects
    when "3"
      puts Project.most_committed_project
      projects
    when "4"
      puts "What's the project's title?"
      title = gets.strip
      puts "What's the project's description?"
      description = gets.strip
      puts "What's the project's due date?"
      due_date = gets.strip # unless due date is not in right format!
      Project.create(title: title, description: description, due_date: due_date)
      puts "Project has been created!"
      lists
    when "5"
      puts "What's the title of the project you want to delete?"
      title = gets.strip
      dead_project = Project.find_by(title: title)
      dead_project.delete_project
      puts "Project #{title} has been deleted!"
      lists
    when "6"
      lists
    end
  end

end
