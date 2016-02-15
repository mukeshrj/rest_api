class Api::V1::UsersController < ApplicationController

  before_action :authenticate_with_token!
  respond_to :json


  def index
    render json: { message: "Invalid email or password" }
  end


  def update
    user = current_user

    if user.update(user_params)
      render json: user, status: 200, location: [:api, user]
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def destroy
    current_user.destroy
    head 204
  end

  private

  def user_params
    params.require(:user).permit(:email, :id)
  end

end
