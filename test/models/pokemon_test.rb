require "test_helper"

class PokemonTest < ActiveSupport::TestCase
  test "different pkmns have different names" do
    pk = Pokemon.find_by_number(25)
    m2 = Pokemon.find_by_number(150)
    assert_not_equal pk.name, m2.name
  end
end
