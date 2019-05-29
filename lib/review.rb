class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :movie

    def short_updated_date_with_time
        self.updated_at.strftime("%m/%d/%y %I:%M%p")
    end
end