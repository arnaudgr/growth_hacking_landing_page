class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
  after_create :subscribe_user_to_mailing_list
 
  private
 
  def subscribe_user_to_mailing_list
    SubscribeUserToMailingListJob.perform_later(self)
  end


 def send_welcome_email_to_user
    UserMailer.welcome_email(self).deliver_later
  end
  
end





