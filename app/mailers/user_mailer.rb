class UserMailer < ApplicationMailer


# Default Mail Values
  default from: 'cyril.calvez22100@gmail.com', to: { User.pluck(:email) }

  def welcome_email(user)
    @user = user
    # I am overriding the 'to' default
    mail(to: @user.email, subject: 'Do you have any spam?')
  end

  def delivery
    UserMailer.welcome_email.deliver_now!
  end

end