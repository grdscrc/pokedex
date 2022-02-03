require "test_helper"

class PokemonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url, as: :json
    assert_response :success
    assert_equal %w(Mewtwo Pikachu), response.parsed_body['pokemons'].map{_1['name']}.sort
  end

  test "should get show" do
    get pokemon_url(Pokemon.find_by_number(150)), as: :json
    assert_response :success
    assert_equal 'Mewtwo', response.parsed_body['name']
  end

  test "should update pokemon" do
    put pokemon_url(Pokemon.find_by_number(25)), params: {
      pokemon: {name: 'Shrek', generation: 0, legendary: true}
    }, as: :json
    assert_response :success
    refute_equal 'Pikachu', response.parsed_body['name']
    assert_equal 'Shrek', Pokemon.find_by_number(25).name
    assert Pokemon.find_by_number(25).legendary
  end

  test "should create pokemon" do
    pk = Pokemon.new(
      number: 282,
      name: "Gardevoir",
      type1: "Psychic",
      type2: "Fairy",
      total: 518,
      hp: 68,
      attack: 65,
      defense: 65,
      spAtk: 125,
      spDef: 115,
      speed: 80,
      generation: 3,
      legendary: false
    )
    post pokemon_index_url, params: {pokemon: pk.attributes}, as: :json
    assert_response :success
    assert_equal 282, response.parsed_body['number']
    assert_equal 'Gardevoir', Pokemon.find_by_number(282).name
  end

  test "should delete pokemon" do
    delete pokemon_url(Pokemon.find_by_number(150)), as: :json
    assert_response :success
    assert_equal 150, response.parsed_body['number']
    assert_nil Pokemon.find_by_number(150)
  end
end
