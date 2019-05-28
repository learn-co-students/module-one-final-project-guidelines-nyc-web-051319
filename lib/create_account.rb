def create_account
    puts "Please enter email"
    email = gets.strip.downcase  #duplicate email
    puts "Please enter password" ##remember to check for mix of letter and numbers
    password = gets.strip
    puts "Please enter a display name"
    name = gets.strip

    new_user = User.create(name: name, created_at: Time.now, updated_at: Time.now)
    Login.create(email: email, password: password, user_id: new_user.id)
end
