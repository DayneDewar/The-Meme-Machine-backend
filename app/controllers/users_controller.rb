class UsersController < ApplicationController

    def index
        @users = User.order(:id)
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)
            if @user.save
                login!  
                render json: {
                status: :created,
                user: @user
            }
            else 
                render json: {
                status: 500,
                errors: @user.errors.full_messages
            }
        end
     end

    def edit
        @user = User.find(params[:id])
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end