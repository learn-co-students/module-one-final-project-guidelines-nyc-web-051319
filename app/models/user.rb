class User < ActiveRecord::Base
  has_many :commits
  has_many :projects, through: :commits

  def self.all_student_names
    self.all.map do |user|
      user.name
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

  def which_student_completed_most_on_time
  end

  def delete_user
    self.commits.delete
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
    end.join(", ")
  end

  def on_time_completed_projects # returns the number of on time completed projects
    commit_project_ids = commits.map do |commit|
      if commit.on_time # if it is on time...
        commit.project.title # return the user's project
      end
    end
  end

  def late_completed_projects # returns the number of on time completed projects
    commits.map do |commit|
      if !commit.on_time # if it is on time...
        commit.project.title # return the user's project
      end
    end
  end

end
