class UserController < ApplicationController
	def index
	end
	
	def browse
		@users = User.all
	end
end
