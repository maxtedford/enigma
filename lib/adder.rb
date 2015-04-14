class Adder
attr_reader :key, :date

  def initialize(key, date)
    @key = key
    @date = date
  end

  def array_that_ish
    @date.chars
  end
end
