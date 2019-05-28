class User < ActiveRecord::Base
  has_many :views
  has_many :users, through: :views

  def update_bio(new_bio)
    self.bio = new_bio
  end###works


  def watch_episode
    View.create
  end

  def hot_list

    ###add show to queue###

  end

  def finish_episode
    ###complete show(remove from queue)###
    ##maybe add to watched list###
  end

  def rate
    ###rate show###
  end

  def most_popular
    ###iterate through ALL views and find most watched episode/show####
  end




  ###watch show####





end
