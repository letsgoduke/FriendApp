class UsersController < ApplicationController
	def index
		@users = User.all
	end
	
	def show
		@user = User.find(params[:id])
	end
	
	def edit
		@user = User.find(params[:id])
	end
	
	def update
		user = User.find_by(id: params[:id])
		user.name = params[:name]
		if user.save
			redirect_to @user
		end
	end	
end
