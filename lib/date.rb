class Date
attr_reader :date

  def initialize(date=today)
    @date = date.to_i
  end

  def squared
    @date**2
  end

  def offsets
    squared.to_s.chars.last(4).map(&:to_i)
  end

  def today
    Time.now.strftime("%d%m%y")
  end
end
