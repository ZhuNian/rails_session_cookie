class SessionController < ApplicationController
  def home
    render 'home/home_page'
  end
  def show
  end

  def new
  end

  def login
    @user = User.find_by(email:params[:data][:email],password:params[:data][:password])
      if @user
        log_in @user
        redirect_to home_url
      else
        redirect_to new_url
        flash[:notice] = 'Invalid email/password combination'
      end
    rescue
      render json: {status:'ERROR'}
  end

  def destroy
    log_out
    redirect_to home_url
  end
end
