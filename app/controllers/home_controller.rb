class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @saloons = User.all_saloons
  end
end
