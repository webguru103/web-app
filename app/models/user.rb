class User < ApplicationRecord
  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable

  mount_uploader :avatar, AvatarUploader

  validates :email, length: { maximum: 100 }
  validates :first_name, :last_name, :display_name, presence: true,
                                                    length: { maximum: 50 }
  validates :timezone, presence: true

  before_save :set_display_name

  private

  def set_display_name
    self.display_name = first_name
  end
end
