class Key
attr_reader :key, :pairs

  def initialize(key=randomize)
    @key = key
  end

  def valid?
    if @key.class == String && @key.length == 5
      "You have entered a valid key"
    else
      "Unable to proceed. Please enter a five-digit key in string format"
    end
  end

  def pair_it
    key_array = @key.chars
    @new_array = []
    index = 0
    until index == 4 do
      @new_array << key_array[index] + key_array[index+1]
      index +=1
    end
    @new_array
  end

  def randomize
    rand_array = []
    5.times {rand_array << rand(9).to_s}
    return rand_array.join
  end
end
