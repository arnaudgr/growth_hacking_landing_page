class ContactsController < ApplicationController
  def create
  	if params[:first_name].empty? || params[:last_name].empty? || params[:email].empty?
      flash[:notice] = "Au moins un champ obligatoire est manquant"
      redirect_to general_path
    else
      puts "ELSSEEEEEE"
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


  def subscribe
    @list_id = Gibbon::API.api_key = ENV["MAILCHIMP_API_KEY"]
    gibbon = Gibbon::Request.new

    gibbon.lists(@list_id).members.create(
      body: {
      email_address: params[:email][:address],
      status: "subscribed"
      }
    )

    respond_to do |format|
      format.json{render :json => {:message => "You have been Successfully added to the list! :)"}}
    end
  end
end