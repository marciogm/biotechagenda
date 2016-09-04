class HomeController < ApplicationController
  def index
    @events = Event.by_month
  end
end
