class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
    @statistics = @character.statistics
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  private

  def character_params
    params.require(:character).permit()
  end

end