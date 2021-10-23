class SaloonsController < ApplicationController
  def index
    @saloon = User.find(params[:id])
  end
end
