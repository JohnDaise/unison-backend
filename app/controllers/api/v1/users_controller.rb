class Api::V1::UsersController < ApplicationController
before_action :authenticate_user

  def index
    @users = User.all
    render json: @users
  end





private

   def user_params
     params.permit(:name, :email, :phone_number, :bio, :pic_url)
   end

   def find_user
     @user= User.find(params[:id])
   end

end
