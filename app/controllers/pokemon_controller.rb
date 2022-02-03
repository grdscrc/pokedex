class PokemonController < ApplicationController
    def index
        @pokemons = Pokemon.paginate(page: params[:page])
    end
end