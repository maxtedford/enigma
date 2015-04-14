require 'minitest'
require 'minitest/autorun'
require './lib/slicer'

class SlicerTest < MiniTest::Test

  def test_that_it_exists
    slice = Slicer.new("string")
    assert slice
  end

  def test_that_can_receive_a_string_and_output_it
    slice = Slicer.new("string")
    assert_equal "string", slice.string
  end

  def test_that_it_can_slice_an_eight_character_string_into_two_split_arrays
    slice = Slicer.new("String!!")
    assert_equal [["S", "t", "r", "i"], ["n", "g", "!", "!"]], slice.slice
  end

  def test_that_it_can_slice_an_odd_number_array_and_leave_the_remainder
    slice = Slicer.new("String")
    assert_equal [["S", "t", "r", "i"], ["n", "g"]], slice.slice
  end

  def test_that_it_can_slice_a_super_long_uneven_character_string_into_many_smaller_split_arrays
    slice = Slicer.new("I am a really long string")
    assert_equal [["I", " ", "a", "m"], [" ", "a", " ", "r"], ["e", "a", "l", "l"], ["y", " ", "l", "o"], ["n", "g", " ", "s"], ["t", "r", "i", "n"], ["g"]], slice.slice
  end
end
