class PlayersController < ApplicationController
  respond_to :json

  def index
    respond_with Player.all
  end

  def show
    respond_with Player.find_by_name(params[:name])
  end

  def create
    player = Player.find_by_name(params[:name])

    if player
      player.update_attributes(score: params[:score])
    else
      player = Player.create(player_params)
    end

    respond_with player
  end

  private

  def player_params
    params.require(:player).permit(:name, :score)
  end
end
