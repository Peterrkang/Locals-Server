class UsersController < ApplicationController
  skip_before_action :authenticate_request

  def new
    if User.find_by_email(params[:email])
      render json: { error: "User already exist", status: 422 }, status: 422
    else
      User.create(email: params[:email], password: params[:password])
      command = AuthenticateUser.call(params[:email], params[:password])
      if command.success?
        render json: { token: command.result }
      else
        render json: { error: command.errors }, status: :unauthorized
      end
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end


end
