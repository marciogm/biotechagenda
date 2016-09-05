class SelectController < ApplicationController

  def states
    @country = params[:country]
    respond_to do |format|
      format.js
    end
  end

  def cities
    @state = params[:state]
    respond_to do |format|
      format.js
    end
  end

end
