require "./lib/character_map"

class Rotator
attr_reader :current_index

  def initialize(letter)
    @char_map = CharacterMap.new.character_map
    @letter = letter
  end

  def find_index
    @current_index = @char_map.rindex(@letter)
  end

  def rotate_forward(number)
    @current_index = (@current_index + number) % 39
    @char_map[@current_index]
  end

  def rotate_backward(number)
    @current_index = (@current_index - number) % 39
    @char_map[@current_index]
  end
end
