class Login < ActiveRecord::Base
    belongs_to :user

    def self.check_existing_login(email)
        Login.find_by(email: email)
    end

    def self.create_account(email)
        print "\nPlease enter your password: " ##remember to check for mix of letter and numbers
        password = gets.strip
        print "\nPlease enter your name: "
        name = gets.strip

        new_user = User.create(name: name, created_at: Time.now, updated_at: Time.now)
        Login.create(email: email, password: password, user_id: new_user.id)
        
        puts "\nYour account has been successfully created.".green
        
        new_user
    end

    def self.login_checker
        system "clear"
        user = nil
        puts "\n================= LOGIN =================".blue
        pwd_retry = 0
        email_retry = 0
        print "\nPlease enter your email: " #check if email is in database
        email = gets.strip
        while(!valid_email?(email) && email_retry < 3)
                print "\nIncorrect email format. Please enter a valid email: ".light_yellow
                email = gets.strip
                email_retry += 1
        end
        if !valid_email?(email)
            puts "\nYou've entered an incorrect email format too many times. Going back to Main Menu.".light_red
            #menu_input = '0'
        else
            has_email = Login.find_by(email: email)
            if has_email
                logged_in = false
                while(pwd_retry < 3 && !logged_in)
                    print "\nPlease enter your password: "
                    password = gets.strip
                    if has_email.password == password
                        user = User.find(has_email.user_id)
                        puts "\nLogin Successful".blue
                    
                        menu_input = "0"
                        logged_in = true
                    else
                        puts "Incorrect password. Please try again.".light_red
                        pwd_retry += 1
                    end
                end
            else #cannot find email
                puts "No account is associated with this email. Please create an account.".light_red
                #menu_input = "6" 
            end
            if pwd_retry >= 3
                puts "Too many incorrect login attempts. Going back to main menu.".light_red
                #menu_input = "0"
            end
        end
        user
    end

end