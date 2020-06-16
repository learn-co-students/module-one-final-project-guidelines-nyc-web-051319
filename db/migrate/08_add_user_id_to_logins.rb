class AddUserIdToLogins < ActiveRecord::Migration[4.2]
    def change
        add_column :logins, :user_id, :integer
    end
end