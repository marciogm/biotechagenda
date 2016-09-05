class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :destroy]

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.create(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_path, notice: 'Event was successfully destroyed.' }
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

    def event_params
      params.require(:event).permit(:name, :description, :start_date, :end_date, :country, :state, :city)
    end
end
