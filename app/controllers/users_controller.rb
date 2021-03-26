class UsersController < ApplicationController
    
    def index   
        @users = User.order(:id)
        render json: @users
    end

end
