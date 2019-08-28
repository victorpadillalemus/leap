class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # after_create :send_welcome_email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites, dependent: :destroy
  has_many :experiences, through: :favorites
  has_many :bookings, dependent: :destroy

  # def send_welcome_email
  #   UserMailer.with(user: self).welcome.deliver_now
  # end

  def favorited?(experience)
    favorites.find_by(experience: experience)
  end
end
