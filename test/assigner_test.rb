require 'minitest'
require 'minitest/autorun'
require './lib/assigner'

class AssignerTest < MiniTest::Test

  def test_it_can_receive_a_string_array_and_output_it
    assignment = Assigner.new(["a", "b", "c", "d"], [1, 2, 3, 4])
    assert_equal ["a", "b", "c", "d"], assignment.string_array
  end

  def test_it_can_receive_an_integer_array_and_output_it
    assignment = Assigner.new(["a", "b", "c", "d"], [1, 2, 3, 4])
    assert_equal [1, 2, 3, 4], assignment.rotation_array
  end

  def test_it_can_zip_two_single_value_arrays
    assignment = Assigner.new(["a"], [1])
    assert_equal [["a", 1]], assignment.zip_arrays
  end

  def test_it_can_zip_two_arrays_of_less_that_four_in_length
    assignment = Assigner.new(["a", "b"], [1, 2])
    assert_equal [["a", 1], ["b", 2]], assignment.zip_arrays

    assignment = Assigner.new(["a", "b", "c"], [1, 2, 3])
    assert_equal [["a", 1], ["b", 2], ["c", 3]], assignment.zip_arrays
  end

  def test_it_can_zip_two_arrays_with_equal_lengths_of_four
    assignment = Assigner.new(["a", "b", "c", "d"], [1, 2, 3, 4])
    assert_equal [["a", 1], ["b", 2], ["c", 3], ["d", 4]], assignment.zip_arrays
  end

  def test_it_can_zip_two_arrays_with_varying_lengths
    assignment = Assigner.new([["a", "b", "c", "d"], ["e", "f"]], [1, 2, 3, 4])
    assert_equal [["a", 1], ["b", 2], ["c", 3], ["d", 4], ["e", 1], ["f", 2]], assignment.zip_arrays

    assignment = Assigner.new([["I", " ", "l", "o"], ["v", "e", " ", "y"], ["o", "u"]], [25, 52, 37, 17])
    assert_equal [["I", 25], [" ", 52], ["l", 37], ["o", 17], ["v", 25], ["e", 52], [" ", 37], ["y", 17], ["o", 25], ["u", 52]], assignment.zip_arrays
  end
end
