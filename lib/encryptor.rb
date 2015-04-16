require './lib/key'
require './lib/date'
require './lib/rotator'
require './lib/adder'

class Encryptor
  attr_reader :key, :date, :message_input

  def initialize(message, key=Key.new, date=Date.new)
    @message_input = message
    @key = key
    @date = date
  end

  def encrypt
    adder = Adder.new(@key,@date)
    rotator = Rotator.new(@message_input, adder)
    rotator.rotate_forward
  end
end
