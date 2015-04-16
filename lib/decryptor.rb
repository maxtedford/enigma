require './lib/key'
require './lib/date'
require './lib/rotator'
require './lib/adder'

class Decryptor
attr_reader :message_input, :key, :date

  def initialize(message, key=Key.new, date=Date.new)
    @message_input = message
    @key = key
    @date = date
  end

  def decrypt
    adder = Adder.new(@key,@date)
    rotator = Rotator.new(@message_input, adder)
    rotator.rotate_backward
  end
end
