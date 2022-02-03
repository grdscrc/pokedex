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
end
