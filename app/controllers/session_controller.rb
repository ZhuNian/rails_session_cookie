class SessionController < ApplicationController
  def show
  end

  def new
  end

  def login
    @user = User.find_by(email:params[:data][:email],password:params[:data][:password])
    if @user
      render json: {status:'OK'}
    else
      render json: {status:'ERROR'}
    end
  end
end
