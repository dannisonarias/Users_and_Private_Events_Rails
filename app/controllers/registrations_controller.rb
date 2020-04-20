class RegistrationsController < ApplicationController
  def create
    @event_id ||= current_user.events.last.id
    @user_id ||= User.find_by(name: reg_params[:invitee]).id
    @reg = Registration.new(event_id: @event_id, user_id: @user_id)
    if @reg.save
      flash[:success] = 'User invited to your most recently created event!'
      redirect_to :root
    else
      flash[:warning]
      redirect_to users_path
    end
  end

  private

  def reg_params
    params.permit(:invitee)
  end
end
