require 'minitest'
require 'minitest/autorun'
require './lib/decryptor'

class DecryptorTest < MiniTest::Test

  def test_it_decrypts
    decryption = Decryptor.new("68o ")
    refute_equal "68o ", decryption.decrypt
  end

  def test_it_decrypts_a_much_longer_file
    decryption = Decryptor.new("68o m0nwt6kytl9m27k53lp3a")
    refute_equal "68o m0nwt6kytl9m27k53lp3a", decryption.decrypt

    decryption = Decryptor.new("68o m0nwt6kytl9m27k53lqm2qrjp1qj7w0s")
    refute_equal "68o m0nwt6kytl9m27k53lqm2qrjp1qj7w0s", decryption.decrypt
  end
end
