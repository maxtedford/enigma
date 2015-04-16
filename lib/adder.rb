require './lib/key'
require './lib/date'

class Adder
attr_reader :key, :date

  def initialize(key=Key.new, date=Date.new)
    @key = key
    @date = date
  end

  def offsets
    @key.offsets.map.with_index{|num, index| num + @date.offsets[index]}
  end
end
