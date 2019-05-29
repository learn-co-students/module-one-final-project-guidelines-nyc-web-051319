class Teacher < ActiveRecord::Base
  has_many :users
  has_many :commits, through: :users
  has_many :projects, through: :commits


  def find_students
    i = 0
    self.users.map do |user|
      i += 1
      "#{i}. #{user.name}"
    end
  end

  def busiest_student
    all_commits = self.users.map do |user|
      user.commits.count
    end
    least_commits = all_commits.sort.first
    self.users.map do |user|
      if user.commits.count == least_commits
        return user.name
      end
    end
  end

  def laziest_student
    all_commits = self.users.map do |user|
      user.commits.count
    end
    most_commits = all_commits.sort.last
    self.users.map do |user|
      if user.commits.count == most_commits
        return user.name
      end
    end
  end

end
