require 'minitest'
require 'minitest/autorun'
require './lib/encryptor'

class EncryptorTest < MiniTest::Test


  def test_it_encrypts_a_one_letter_string
    encryption = Encryptor.new("a")
    refute_equal "a", encryption.encrypt
  end

  def test_it_encrypts_a_two_letter_string
    encryption = Encryptor.new("ab")
    refute_equal "ab", encryption.encrypt
  end
  def test_it_encrypts_a_four_letter_string
    encryption = Encryptor.new("ruby")
    refute_equal "ruby", encryption.encrypt
  end

  def test_it_encrypts_a_much_longer_string
    encryption = Encryptor.new("ruby makes me want to cry")
    refute_equal "ruby makes me want to cry", encryption.encrypt

    encryption = Encryptor.new("ruby makes me want to dance and sing")
    refute_equal "ruby makes me want to dance and sing", encryption.encrypt
  end
end

