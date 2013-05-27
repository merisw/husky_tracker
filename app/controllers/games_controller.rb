class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])
    if @game.save
      flash[:notice] = "Game has been created."
      redirect_to @game
    else
      flash[:alert] = "Game has not been created."
      render :action => "new"
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
  end

end
