class Traveler < ActiveRecord::Base
  has_many :plans
  has_many :activities, through: :plans

  def view_plans
    self.plans.each do |plan|
      puts "#{plans.index(plan) + 1}. #{plan.activity.name} - #{plan.date}"
    end
  end
end
