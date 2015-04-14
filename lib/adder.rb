class Adder
attr_reader :key, :date, :date_integers, :key_integers

  def initialize(key, date)
    @key = key
    @date = date
  end

  def array_that_date
    @date.chars
  end

  def integer_that_date
    @date_integers = []
    array_that_date.map{|char| @date_integers << char.to_i}
    date_integers
  end

  def integer_that_key
    @key_integers = []
    @key.map{|char| @key_integers << char.to_i}
    key_integers
  end

  def zip_that_ish
    key_integers.zip(date_integers)
  end

  def add_the_zip
    rotation_numbers = []
    4.times do |number|
      rotation_numbers << (key_integers[number] + date_integers[number])
    end
    rotation_numbers
  end
end
