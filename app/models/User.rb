class User < ActiveRecord::Base
  has_many :views
  has_many :users, through: :views

  def update_bio(new_bio)
    self.bio = new_bio
  end###works


  def watch_episode(episode_id)
    View.create(user_id: self.id, episode_id: episode_id)
  end

  def hot_list
    ###add show to queue###
  end

  def finished_episode
    ####returns a list of viewed episodes####
  
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
