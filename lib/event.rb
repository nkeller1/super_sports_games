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
    sub_array = []
    subtract = ages.each do |age|
      sub_array << (age - average_age).round(1)
    end
    sq_array = []
    sub_array.each do |num|
      sq_array << (num * num).round(2)
    end
    sum_num = sq_array.sum do |num|
      num
    end
    second_average = sum_num / @ages.count
    sq_rt = Math.sqrt(second_average).round(2)
  end

end
