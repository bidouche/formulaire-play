class UserController < ApplicationController
  def new
  	@user= User.new
  end

  def create
  	if params[:user]
      #faire fonctionner le form_for
      User.create(bio: params[:user][:bio], username: params[:user][:username], email: params[:user][:email])
   		@user = User.all
    else

  	User.create(username:params["username"],email:params["email"],bio:params["bio"])
		@user = User.all
	end
  end
end
