class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    sum = @ages.sum
    count = @ages.count
    (sum.to_f / count.to_f)
  end

  def standard_deviation_age

  end

end
