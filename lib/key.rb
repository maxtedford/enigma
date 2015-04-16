class Key
attr_reader :key, :pairs

  def initialize(key=randomize)
    @key = key
  end

  def offsets
  @key.chars.each_cons(2).map(&:join).map(&:to_i)
  end

  def randomize
    rand_array = []
    5.times {rand_array << rand(9).to_s}
    rand_array.join
  end

  def valid?
    if @key.class == String && @key.length == 5
      "You have entered a valid key"
    else
      "Unable to proceed. Please enter a five-digit key in string format"
    end
  end
end
