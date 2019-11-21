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
  require "pry"; binding.pry
  sq_array << Math.sqrt(num)
end

p sq_array

# When you find the standard deviation, print it out
