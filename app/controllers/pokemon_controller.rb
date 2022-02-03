class PokemonController < ApplicationController
    def index
        @pokemons = Pokemon.paginate(page: params[:page])
    end

    def edit
        @pokemon = Pokemon.find(params[:id])
    end
end