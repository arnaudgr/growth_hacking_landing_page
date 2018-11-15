class ContactsController < ApplicationController
  def create
  	if params[:first_name].empty? || params[:last_name].empty? || params[:email].empty?
      flash[:notice] = "Au moins un champ obligatoire est manquant"
      redirect_to general_path
    else
      @user = User.new
      @user.first_name = params[:first_name]
      @user.last_name = params[:last_name]
      @user.email = params[:email]
      @user.city = params[:city]
      @user.country = params[:country]
      @user.save
      flash[:notice] = "Votre inscription a bien été effectuée"
      redirect_to general_path
  	end
  end
#################MAILER#######################""

#envoimail/semaine
  def run
    User.find_each do |user|
    UserMailer.with(user: user).weekly_summary.deliver_now

	end
end


   def welcome_mail
    @user = User.new(params [:user])

    respond_to do |format|
      if @user.save
        # Dire au UserMailer d'envoyer un email de bienvenue après l'enregistrement
        UserMailer.with(user: @user).welcome_email.deliver_later
        
        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }

      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
