class V1::HerosController < ApplicationController

  def index
    @heros = Hero.includes(:abilities).all
    render json: @heros
  end

  def show
    @hero = Hero.find(params[:id])
    render json: @hero
  end
end
