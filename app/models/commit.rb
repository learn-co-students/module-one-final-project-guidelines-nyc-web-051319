class Commit < ActiveRecord::Base
  belongs_to :user
  belongs_to :project


  def on_time? # takes a project instance as an argument
    if self.commit_date > self.project.due_date # if commit date is past due date
      self.on_time = false
      self.save
      "You're late!"
    else
      "You're on time."
    end
  end

  def delete_commit
    self.delete
  end

end
