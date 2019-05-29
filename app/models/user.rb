class User < ActiveRecord::Base
  has_many :commits
  has_many :projects, through: :commits
  belongs_to :teacher

  def self.all_student
    self.all.map do |user|
      user.find_by(teacher_id: teacher).name
    end
  end


  def self.laziest
    all_commits = self.all.map do |user|
      user.commits.count
    end
    least_commits = all_commits.sort.first
    self.all.map do |user|
      if user.commits.count == least_commits
        return user.name
      end
    end
  end

  def self.busiest
    all_commits = self.all.map do |user|
      user.commits.count
    end
    most_commits = all_commits.sort.last
    self.all.map do |user|
      if user.commits.count == most_commits
        return user.name
      end
    end
  end

  def delete_user
    self.delete
  end

  def completed_projects # returns the number of completed projects
    self.projects.count
  end

  def commits
    Commit.all.select do |commit|
      commit.user == self
    end
  end

  def projecttitles
    self.projects.map do |project|
      project.title
    end
  end

  def on_time_completed_projects # returns the number of on time completed projects
    on_time_commits = self.commits.select {|commit| commit.on_time?}
    on_time_commits.map do |commit|
      commit.project.title # return the user's project
    end
  end

  def late_completed_projects # returns the number of on time completed projects
    late_commits = self.commits.select {|commit| commit.on_time? == false}
    late_commits.map do |commit|
      commit.project.title # return the user's project
    end
  end

end
