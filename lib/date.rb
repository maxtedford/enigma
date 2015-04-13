class Date
attr_reader :date

  def initialize(date)
    @date = date
  end

  def valid?
    if @date.class == Fixnum
      "You have entered a valid number"
    else
      "Please enter a six-digit integer"
    end
  end

  def squared
    @squared = @date**2
  end

  def string_that_ish
    squared.to_s
  end

  def get_last_four
    string_that_ish.to_s[-4..-1].to_i
  end
end
