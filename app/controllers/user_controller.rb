class UserController < ApplicationController
  def new
  	@user= User.new
  end

  def create
  	User.create(username:params["username"],email:params["email"],bio:params["bio"])
		@users = User.all
  end
end
