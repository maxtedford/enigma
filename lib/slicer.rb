class Slicer
attr_reader :string

  def initialize(string)
    @string = string
  end

  def slice
    @string.chars.each_slice(4).to_a
  end
end
