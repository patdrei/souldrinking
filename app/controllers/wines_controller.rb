class WinesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def index
    @wines = Wine.all
  end

  def show
    @wines = Wine.find(params[:id])
  end

  def edit
  end

  def update
  end
end
