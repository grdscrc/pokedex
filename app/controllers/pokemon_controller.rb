class PokemonController < ApplicationController
    def index
        page = params.key?(:page) ? params[:page].to_i : 1
        per_page = params.key?(:per_page) ? params[:per_page].to_i : Pokemon.per_page
        prev_page = root_path(page: page - 1) unless page == 1
        last_page = (Pokemon.count.to_f/per_page).ceil
        next_page = root_path(page: page + 1) unless page == last_page
        render json: {
            pokemons: Pokemon.paginate(page: page),
            per_page: per_page,
            links: {first: root_path(page: 1), prev: prev_page, next: next_page, last: root_path(page: last_page)}.compact
        }
    end

    def show
        render json: Pokemon.find(params[:id])
    end

    def update
        pkmn = Pokemon.find(params[:id])
        params.permit!
        pkmn.update!(params[:pokemon])
        render json: pkmn
    end

    def create
        params.permit!
        pkmn = Pokemon.create!(params[:pokemon])
        render json: pkmn
    end

    def destroy
        pkmn = Pokemon.find(params[:id])
        pkmn.destroy
        render json: pkmn
    end
end