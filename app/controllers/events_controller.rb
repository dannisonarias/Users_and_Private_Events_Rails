class EventsController < ApplicationController
  include EventsHelper
   # require user to be logged in for access to any methods
   before_action :require_login, except: [:index]

  def index
    # includes user to avoid n+1 problem in the view
    @event = Event.all
  end

  def create
    @event = current_user.events.build(event_params)
    debugger
    if @event.save
      flash[:success] = 'Event Successfully Created'
      redirect_to :root
    else
      render 'new'
    end
  end

  def new
    @event = Event.new
  end

  def event_params
    params.require(:event).permit(:name, :date,:description)
  end
end
