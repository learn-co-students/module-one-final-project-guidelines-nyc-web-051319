class Project < ActiveRecord::Base
  has_many :commits
  has_many :users, through: :commits

  def self.all_project_names
    self.all.map do |project|
      project.title
    end
  end

  def self.least_committed_project
    all_commits = self.all.map do |project|
      project.commits.count
    end
    least_commits = all_commits.sort.first
    self.all.map do |project|
      if project.commits.count == least_commits
        return project.title
      end
    end
  end

  def self.most_committed_project
    all_commits = self.all.map do |project|
      project.commits.count
    end
    most_commits = all_commits.sort.last
    self.all.map do |project|
      if project.commits.count == most_commits
        return project.title
      end
    end
  end

  def commits
    Commit.all.select do |commit|
      commit.project == self
    end
  end

  def usernames
    self.users.map do |user|
      user.name
    end.join(", ")
  end

  def delete_project
    self.delete
  end

  def how_many_users # counts how many users have done this project
    self.users.count
  end

  def extend_due_date(amount_of_time) # changes the due date of a project
    self.datetime + amount_of_time
  end

end
