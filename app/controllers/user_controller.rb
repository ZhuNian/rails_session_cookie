class UserController < ApplicationController
  def show
    @user = User.find_by(email:'zn@163.com')
    render 'user/show'
  end
  def create
    render 'create'
  end
end