class Login < ActiveRecord::Base
    belongs_to :user

    def self.check_existing_login(email)
        Login.find_by(email: email)
    end

    def self.create_account(email)
        print "Please enter your password: " ##remember to check for mix of letter and numbers
        password = gets.strip
        print "\nPlease enter your name: "
        name = gets.strip

        new_user = User.create(name: name, created_at: Time.now, updated_at: Time.now)
        Login.create(email: email, password: password, user_id: new_user.id)
        
        puts "\nYour account has been successfully created.".blue
        sleep 0.5
        new_user
    end

end