class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(name: user_params[:name])
    if !@user.nil?
      flash[:success] = 'logged in'
      sign_in
      redirect_to :root
    else
      flash[:warning] = 'Invalid user'
      redirect_to new_session_path
    end
  end

  def destroy
    log_out
    redirect_to :root
  end

  private

  def user_params
    params.permit(:name)
  end
end
