require 'minitest'
require 'minitest/autorun'
require './lib/character_map'

class CharacterMapTest < MiniTest::Test

  def test_that_it_exists
    map = CharacterMap.new
    assert map
  end
end
