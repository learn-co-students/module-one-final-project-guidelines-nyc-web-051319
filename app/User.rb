class User
  has_many :views
  has_many :users, through: :views
end
