require './lib/character_map'
require './lib/adder'

class Rotator
attr_reader :current_index

  def initialize(message="ruby is hard", adder=Adder.new)
    @char_map = CharacterMap.new.character_map
    @message = message
    @adder = adder
  end

  def slice(string=@message)
    string.chars.each_slice(4).to_a.map(&:join)
  end

  def rotate_forward
    slice(@message).map do |group|
      group.chars.map.with_index do |char, index|
      @char_map[((@char_map.index(char) + @adder.offsets[index]) % @char_map.length)]
      end.join
    end.join
  end

  def rotate_backward
    slice(@message).map do |group|
      group.chars.map.with_index do |char, index|
        @char_map[((@char_map.index(char) - @adder.offsets[index]) % @char_map.length)]
      end.join
    end.join
  end
end
