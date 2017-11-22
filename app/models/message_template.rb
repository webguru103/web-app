class MessageTemplate < ApplicationRecord
  acts_as_paranoid

  enum type: { email: 1, slack_update: 2, sms: 3 }

  validates :subject, length: { maximum: 100 }
  validates :body, length: { maximum: 2000 }
  validates :sender, length: { maximum: 50 }
end
