require 'minitest'
require 'minitest/autorun'
require './lib/rotator'

class RotatorTest < MiniTest::Test

  def test_that_it_can_find_its_starting_index
    rotator = Rotator.new("a")
    assert_equal 0, rotator.find_index
  end

  def test_that_it_can_rotate_forward_one_letter
    rotator = Rotator.new("a")
    rotator.find_index
    assert_equal "b", rotator.rotate_forward(1)
  end

  def test_that_it_can_rotate_forward_multiple_letters
    rotator = Rotator.new("a")
    rotator.find_index
    assert_equal "f", rotator.rotate_forward(5)

    rotator = Rotator.new("a")
    rotator.find_index
    assert_equal "5", rotator.rotate_forward(31)
  end

  def test_that_it_can_rotate_backward_one_letter
    rotator = Rotator.new("b")
    rotator.find_index
    assert_equal "a", rotator.rotate_backward(1)
  end

  def test_that_it_can_rotate_backward_multiple_letters
    rotator = Rotator.new("z")
    rotator.find_index
    assert_equal "b", rotator.rotate_backward(24)

    rotator = Rotator.new(" ")
    rotator.find_index
    assert_equal "m", rotator.rotate_backward(24)
  end

  def test_that_it_can_rotate_through_the_end_of_the_map
    rotator = Rotator.new(",")
    rotator.find_index
    assert_equal "a", rotator.rotate_forward(1)
  end

  def test_that_it_can_rotate_through_the_end_of_the_map
    rotator = Rotator.new("a")
    rotator.find_index
    assert_equal ",", rotator.rotate_backward(1)
  end

  def test_that_it_can_rotate_forward_more_than_one_time_around
    rotator = Rotator.new(",")
    rotator.find_index
    assert_equal "k", rotator.rotate_forward(50)
  end

  def test_that_it_can_rotate_backward_more_than_one_time_around
    rotator = Rotator.new("a")
    rotator.find_index
    assert_equal "2", rotator.rotate_backward(50)
  end
end
