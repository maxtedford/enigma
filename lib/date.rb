class Date
attr_reader :date

  def initialize(date)
    @date = date
  end

  def squared
    @date.to_i**2
  end

  def get_last_four
    @last_four = squared.to_s[-4..-1]
  end

  def valid?
    if @date.class == Fixnum
      "You have entered a valid date"
    else
      "Cannot proceed. Please enter a six-digit number as a string in DDMMYY format"
    end
  end
end
