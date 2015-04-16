require 'minitest'
require 'minitest/autorun'
require './lib/key'

class KeyTest < MiniTest::Test

  def test_it_exists
    key = Key.new("11111")
    assert key
  end

  def test_it_only_accepts_five_digit_strings
    key = Key.new("11111")
    assert_equal "You have entered a valid key", key.valid?

    key = Key.new(11111)
    assert_equal "Unable to proceed. Please enter a five-digit key in string format", key.valid?
  end

  def test_it_creates_offsets_as_integers
    key = Key.new("12345")
    assert_equal [12, 23, 34, 45], key.offsets
  end

  def test_it_can_generate_a_random_five_digit_key_in_string_format
    key = Key.new()
    assert_equal 5, key.key.size

    key = Key.new()
    assert_equal "You have entered a valid key", key.valid?
  end
end
