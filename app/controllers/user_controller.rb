class UserController < ApplicationController

  def new
    @users = User.new()
  end

  def create
    @user = User.new(params)
    sign_in
  end

  def show
    @user = User.find(params[:id])
  end

end
