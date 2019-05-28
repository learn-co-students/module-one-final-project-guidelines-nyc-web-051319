class User < ActiveRecord::Base
    has_many :reviews
    belongs_to :login
end