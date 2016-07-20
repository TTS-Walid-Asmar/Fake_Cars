class WelcomeController < ApplicationController
  def index
    @vehicle_list = Vehicle.all
  end

  def about
  end

  def contact
  end
end
