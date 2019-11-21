ages = [24, 30, 18, 20, 41]

sum = ages.sum

count = ages.count

average = (sum.to_f / count.to_f)

sub_array = []
subtract = ages.each do |age|
  # require "pry"; binding.pry
  sub_array << (age - average).round(1)
end

sq_array = []
sub_array.each do |num|
  sq_array << (num * num).round(2)
end

sum_num = sq_array.sum do |num|
  num
end

second_average = sum_num / count

sq_rt = Math.sqrt(second_average)

# When you find the standard deviation, print it out
p sq_rt.round(2)
