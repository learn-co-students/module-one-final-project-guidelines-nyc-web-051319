class Commit < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  def on_time?
    self.commit_date <= self.project.due_date
  end

  def delete_commit
    self.delete
  end

end
