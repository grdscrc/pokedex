require "test_helper"

class PokemonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
  end

  test "should get edit" do
    get edit_pokemon_url(Pokemon.find_by_number(25).id)
    assert_response :success
    assert_equal 'Pikachu', assigns(:pokemon).name
  end

  test "should update pokemon" do
    put pokemon_url(Pokemon.find_by_number(25)), params: {pokemon: {name: 'Xavier'}}
    assert_response :success
    assert_equal 'Xavier', Pokemon.find_by_number(25).name
  end

  test "should get new" do
    get new_pokemon_url
    assert_response :success
    assert_nil assigns(:pokemon).name
    refute assigns(:pokemon).persisted?
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
    post pokemon_index_url, params: {pokemon: pk.attributes}
    assert_response :success
    assert_equal 'Gardevoir', Pokemon.find_by_number(282).name
  end
end
