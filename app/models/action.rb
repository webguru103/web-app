class Action < ApplicationRecord
  acts_as_paranoid

  validates :description, length: { maximum: 200 }

  # If @action.planned_on < Date.today AND @action.completed_on IS NULL, then the @action shows as 'Outstanding'
  # If @action.planned_on = Date.today AND @action.completed_on IS NULL, then the @action shows as 'Planned'
  # If @action.completed_on = Date.today , then the @action shows as 'Completed'
end
