class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
        user = User.find_by(id: params[:id])
        if user.update(user_params)
            render json: user
        else 
            render json: { error: 'failed to update user account' }, status: :not_acceptable
        end 
    end 

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
        render json: {message: 'account has been deleted'}
    end 
    
      private
    
    def user_params
        params.require(:user).permit(:username, :password)
    end  

end
