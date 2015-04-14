class Assigner
attr_reader :string_array, :rotation_array

  def initialize(string_array=[], rotation_array=[])
    @string_array = string_array
    @rotation_array = rotation_array
  end

  def zip_arrays
    if string_array.length == rotation_array.length
      string_array.zip(rotation_array)
    else
      string_array.map{|group| group.zip(rotation_array)}.flatten.each_slice(2).to_a
    end
  end
end
