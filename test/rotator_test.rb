require 'minitest'
require 'minitest/autorun'
require './lib/rotator'

class RotatorTest < MiniTest::Test

  def test_that_it_will_slice_the_message
    rotator = Rotator.new("ruby is hard")
    assert_equal ["ruby", " is ", "hard"], rotator.slice
  end

  def test_that_it_will_return_an_encrypted_word
    rotator = Rotator.new("ruby")
    refute_equal "ruby", rotator.rotate_forward
  end

  def test_that_it_will_return_an_encrypted_message_thats_really_long
    rotator = Rotator.new("i love all the turing instructors")
    refute_equal "i love all the turing instructors", rotator.rotate_forward
  end

  def test_that_it_will_return_a_decrypted_word
    rotator = Rotator.new("asdf")
    refute_equal "asdf", rotator.rotate_backward
  end

  def test_that_it_will_return_a_decrypted_message_thats_really_long
    rotator = Rotator.new("eivsfvpceka,c,g.d.. adco")
    refute_equal "eivsfvpceka,c,g.d.. adco", rotator.rotate_backward
  end
end
