require_relative '../config/environment'
require 'io/console'

class ApplicationController
  $teacher

  def call
    main
  end

  def main
    puts "Welcome to Your CLI Student Database for Teachers!!! What's your username?"
    puts ""
    username = gets.strip.capitalize
    puts ""

    case username
      when username
        person = Teacher.find_by(name: username)
          if person != nil
            puts "Hi #{person.name}, what's your password?"
            puts ""
            puts ""
            password = STDIN.noecho(&:gets).chomp #gets.strip.downcase
            puts ""
            weird_person = Teacher.find_by(password: person.password)
            if password == weird_person.password
              puts "Welcome #{person.name}, what would you like to do?"
              $teacher = person
              lists
            else
              puts "Invalid Password. Try again."
              main
            end
          else
            puts "Teacher username not found. Would you like to register? (y/n)"
            answer = gets.strip
            if answer == "y"
              puts "What's your username?"
              username = gets.strip.capitalize
              puts "what's your password?"
              password = STDIN.noecho(&:gets).chomp
              new_teacher = Teacher.create(name: username, password: password)
              new_teacher.save
              puts "New teacher #{username} has been added!"
              main
            elsif answer == "n"
              main
            else
              puts "Invalid password start again"
              main
            end
          end
      end

  end


    # when "Rishi"
    #   person = Teacher.find_by(name: username)
    #   puts "Hi #{person.name}, what's your password?"
    #   password = gets.strip.downcase
    #   if password = Teacher.find_by(password: password)
    #     puts "Welcome #{person.name}, what would you like to do? "
    #     $teacher = person
    #     lists
    #   else
    #     puts "Invalid password start again"
    #     main
    #   end
    # when "Matt"
    #   person = Teacher.find_by(name: username)
    #   puts "Hi #{person.name}, what's your password?"
    #   password = gets.strip.downcase
    #   if password = Teacher.find_by(password: password)
    #     puts "Welcome #{person.name}, what would you like to do? "
    #     $teacher = person
    #     lists
    #   else
    #     puts "Invalid password start again"
    #     main
    #   end
    # else
    #   puts "Teacher username not found. Would you like to register? (y/n)"
    #   answer = gets.strip
    #   if answer == "y"
    #     puts "What's your username?"
    #     username = gets.strip
    #     puts "what's your password?"
    #     password = gets.strip
    #     new_teacher = Teacher.create(name: username, password: password)
    #     new_teacher.save
    #     puts "New teacher #{username} has been added!"
    #     main
    #   elsif answer == "n"
    #     main
    #   else
    #     puts "Invalid input. Try again."
    #   end
    # end


  def lists
    puts ""
    puts "1. List of Students"
    puts ""
    puts "2. List of Projects"
    puts ""
    puts "3. Log Out"
    puts ""
    puts "4. Change Password"
    puts ""
    puts "5. Delete Self"
    puts ""
    input = gets.strip
    puts ""

    case input
      when "1"
        puts "***********************************"
        puts "Names:"
        puts "***********************************"
        puts $teacher.find_students
        puts "***********************************"
        puts ""
        puts ""
        students
      when "List of Students"
        puts $teacher.find_students
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
      when "3"
        main
      when "4"
        puts "What would you like your new password to be?"
        password = gets.strip
        $teacher.update(:password => password)
        lists
      when "5"
        puts "Are you sure? (y/n)"
        answer = gets.strip
        if answer == "y"
          if Teacher.all.include?($teacher)
            $teacher.delete
            puts "Deleted #{$teacher.name}."
            main
          else
            puts "Teacher does not exist!"
            main
          end
        else
          puts "Invalid input. Please try again"
          input = gets.strip
        end
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
    puts ""
    new_input = gets.strip

    case new_input
      when "1"
        puts ""
        puts ""
        puts "Which student's projects would you like to see?"
        puts ""
        name = gets.strip
        person = User.find_by(name: name)
        puts ""
        puts ""
        puts "Projects:"
        puts "******************"
        puts person.projecttitles
        puts "******************"
        puts ""
        puts "Would you like to see which projects are submitted on time? (y/n)"
        puts ""
        answer = gets.strip
        if answer == "y"
          puts ""
          puts "On-Time Projects:"
          puts "*****************************"
          puts person.on_time_completed_projects
          puts "*****************************"
          puts ""
          students
        elsif answer == "n"
          puts ""
          puts "Would you like to see which projects are submitted late? (y/n)"
          puts ""
          answer = gets.strip
          puts ""
          if answer == "y"
            puts ""
            puts "Late Projects:"
            puts "*****************************"
            puts person.late_completed_projects
            puts "*****************************"
            puts ""
            students
          elsif answer == "n"
            puts ""
            students
            puts ""
          else
            puts ""
            puts "Invalid input. Please try again."
            puts ""
            students
          end
        else
          puts "Invalid input. Please try again."
          students
        end
      when "2"
        puts ""
        puts "*****************************************"
        puts "BEST STUDENT: #{$teacher.laziest_student} (#{$teacher.laziest_instance.commits.count} commits)"
        puts "*****************************************"
        puts ""
        students
      when "3"
        puts ""
        puts "*****************************************"
        puts "LAZIEST STUDENT: #{$teacher.busiest_student} (#{$teacher.busiest_instance.commits.count} commits)"
        puts "*****************************************"
        puts ""
        students
      when "4"
        puts ""
        puts ""
        puts "What's the name of the student?"
        puts ""
        name = gets.strip
        $teacher.users << User.create(name: name, teacher_id: $teacher.id)
        puts ""
        puts "Student #{name} has been added!"
        puts ""
        puts ""
        lists
      when "5"
        puts ""
        puts "What's the name of the student you want to delete?"
        puts ""
        name = gets.strip
        puts ""
        dead_student = User.find_by(name: name, teacher_id: $teacher.id)
        if User.all.include?(dead_student)
          dead_student.delete_user
          $teacher.users.delete(dead_student)
          puts "Student #{name} has been deleted!"
          lists
        else
          puts ""
          puts "Student does not exist, try again!"
          puts ""
          lists
        end
      when "6"
        puts ""
        lists
        puts ""
      end
  end

  def projects
    puts ""
    puts "What would you like to find out?"
    puts "1. Details of a Project"
    puts ""
    puts "2. Project with most commits"
    puts ""
    puts "3. Project with least commits"
    puts ""
    puts "4. Add a project"
    puts ""
    puts "5. Delete a project"
    puts ""
    puts "6. Extend a Project Due Date"
    puts ""
    puts "7. Go back to Main Menu"
    puts ""
    new_input = gets.strip

    case new_input
      when "1"
        puts ""
        puts "which project would you like to see details for?"
        id = gets.strip
        project = Project.find_by(id: id)
        puts project.project_details
        puts ""
        puts ""
        projects
      when "2"
        puts ""
        puts Project.least_committed_project
        projects
      when "3"
        puts ""
        puts Project.most_committed_project
        projects
      when "4"
        puts ""
        puts "What's the project's title?"
        title = gets.strip
        puts "What's the project's description?"
        description = gets.strip
        puts "What's the project's due date?"
        due_date = gets.strip # unless due date is not in right format!
        new_project = Project.create(title: title, description: description, due_date: due_date)
        new_project.save
        puts "Project has been created!"
        lists
      when "5"
        puts ""
        puts "What's the title of the project you want to delete?"
        title = gets.strip
        dead_project = Project.find_by(title: title)
        if Project.all.include?(dead_project)
          dead_project.delete_project
          puts "Project #{title} has been deleted!"
          lists
        else
          puts "Project does not exist!"
          lists
        end
      when "6"
        puts ""
        puts "What's the id of the project you'd like to extend?"
        id = gets.strip
        puts "How many days would you like to extend it by?"
        number_of_days = gets.strip.to_i
        change_project = Project.find_by(id: id)
        change_project.extend_due_date(number_of_days.days)
        puts "Project due date has been extended until #{change_project.due_date + number_of_days.days}!"
      when "7"
        lists
      end
    end
end
