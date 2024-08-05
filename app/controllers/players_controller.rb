class PlayersController < ApplicationController
  def index
    sort_column = params[:sort] || 'avg'
    sort_direction = params[:direction] || 'desc'
    @players = Player.order("#{sort_column} #{sort_direction}").page(params[:page]).per(25)

    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
end
