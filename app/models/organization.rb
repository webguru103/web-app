class Organization < ApplicationRecord
  acts_as_paranoid

  validates :name, length: { maximum: 50 }
end
