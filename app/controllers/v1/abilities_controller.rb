class V1::AbilitiesController < ApplicationController
  before_action :abilities, only: [:index]

  def index
    render json: @abilities
  end

  def show
    ability = Ability.find(params[:id])
    render json: ability
  end

  private

  def abilities
    @abilities = if params[:hero_id]
                    hero = Hero.find(params[:hero_id])
                    hero.abilities
                 else
                    Ability.all
                 end
  end
end
