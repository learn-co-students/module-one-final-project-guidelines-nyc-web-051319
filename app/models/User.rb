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

  def remove_view
  end

  def finished_episode
    ###selet episode returns episode ids, return specific episode ids that match user ids####
    ####returns a list of viewed episodes####
    ##maybe add to watched list###
  end

  def rate(episode_id, rating)
    View.create(user_id: self.id, episode_id: episode_id, rating: rating)
    ###rate episode (1-5 stars)###
  end

  def select_episode(ep_id)
    View.all.select do |ep|
      ep.episode_id = ep_id
    end
  end####Select by episode helper method####

  










end
