class EventsController < ApplicationController

  before_action :set_event, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @events = current_user.events
  end

  def show
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)

    @event.starts_at = Time.now
    @event.ends_at = 2.days.from_now

    if @event.save
      redirect_to @event, notice: "event created"
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @event.update(event_params)
     redirect_to @event, notice: "event updated"
   else
     render :edit
   end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
  def event_params
    params
      .require(:event)
      .permit(
        :name , :description , :starts_at , :ends_at , :location , :capacity , :price , :includes_food ,:includes_drinks , :active
      )
  end
end
