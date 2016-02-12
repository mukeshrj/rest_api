class Api::V1::UsersController < ApplicationController
  def index
  	render json: { message: "Invalid email or password" }
  end
end
