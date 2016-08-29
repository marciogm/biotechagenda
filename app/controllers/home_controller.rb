class HomeController < ApplicationController
  def index
    @events = Event.all.order(:start_date)
  end
end
