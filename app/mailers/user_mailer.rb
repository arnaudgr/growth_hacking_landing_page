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



# pour indiquer à Mail de transformer une pièce jointe en pièce jointe, 
# on appelle tout simplement inline sur la méthode des pièces jointes dans votre Mailer

# def welcome
#   attachments.inline['image.jpg'] = File.read('/path/to/image.jpg')
# end





	
end
