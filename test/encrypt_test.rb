require './lib/encrypt'
require './lib/encryptor'
require './lib/date'
require './lib/key'

def test_encrypt
  encrypt = Encrypt.new
  encrypt.key = Key.new("11111")
  encrypt.date = Date.new("111111")
  encrypt.message = "test"
  assert_equal "8s55", encrypt.write_to_file
end

def test_it_with_random_key
  encrypt = Encrypt.new
  encrypt.date = Date.new("111111")
  encrypt.message = "test"
  assert_equal "test", encrypt.write_to_file
end

def test_it_with_random_date
  encrypt = Encrypt.new
  encrypt.key = Key.new("11111")
  encrypt.message = "test"
  assert_equal "test", encrypt.write_to_file
end
