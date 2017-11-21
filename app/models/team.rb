class Team < ApplicationRecord
  acts_as_paranoid

  validates :name, presence: true, length: { maximum: 50 }
  validates :color, length: { maximum: 6 }
end
