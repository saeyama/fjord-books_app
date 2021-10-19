class HomesController < ApplicationController
  def index
    @user = User.all
  end
end
