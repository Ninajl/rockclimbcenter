class ClimbersController < ApplicationController

  def index
    @gyms = Gym.all
  end

end
