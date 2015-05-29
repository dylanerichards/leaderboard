class PlayersController < ApplicationController
  respond_to :json

  def index
    if params[:offset] && params[:size]
      respond_with Player.all.limit(params[:size].to_i).offset(params[:offset].to_i)
    elsif params[:offset]
      respond_with Player.all.offset(params[:offset].to_i)
    elsif params[:size]
      respond_with Player.all.limit(params[:size].to_i)
    else
      respond_with Player.all
    end
  end

  def show
    if Player.find_by_name(params[:name])
      respond_with Player.find_by_name(params[:name])
    else
      raise ActionController::RoutingError.new('Not Found')
    end
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

  def destroy
    player = Player.find_by_name(params[:name])

     if player
       player.destroy
     else
       raise ActionController::RoutingError.new('Not Found')
     end
  end

  private

  def player_params
    params.require(:player).permit(:name, :score)
  end
end
