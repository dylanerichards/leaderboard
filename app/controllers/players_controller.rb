class PlayersController < ApplicationController
  respond_to :json

  def index
    respond_with Player.all
  end

  def create
    respond_with Player.create(player_params)
  end

  private

  def player_params
    params.require(:player).permit(:name, :score)
  end
end
