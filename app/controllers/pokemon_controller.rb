class PokemonController < ActionController::Base
    def index
        @pokemons = Pokemon.paginate(page: params[:page])
    end
end