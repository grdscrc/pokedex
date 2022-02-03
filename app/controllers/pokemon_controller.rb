class PokemonController < ApplicationController
    def index
        @pokemons = Pokemon.paginate(page: params[:page])
    end

    def edit
        @pokemon = Pokemon.find(params[:id])
    end

    def update
        pkmn = Pokemon.find(params[:id])
        params.permit!
        pkmn.update!(params[:pokemon])
    end

    def new
    end

    def create
        params.permit!
        Pokemon.create!(params[:pokemon])
    end

    def destroy
        Pokemon.find(params[:id]).destroy
    end
end