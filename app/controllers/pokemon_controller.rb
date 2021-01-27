class PokemonController < ApplicationController
  def index
    pokemon = params[:pokemon]
    conn = Faraday.new('https://pokeapi.co')
    require 'pry'; binding.pry
    response = conn.get("/api/v2/pokemon-form/#{pokemon}/")
    @pokemon = JSON.parse(response.body, symbolize_names: true)
  end
end
