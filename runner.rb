require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'

# @games = Games.new(year)

puts "Hello. Welcome to Super Sports Games!"
puts "Please enter the year for the games you want to work with:"
year = gets.chomp
puts "Thank You."
Games.new(year)
puts "What is the name of the event you wish to create?"
event_name = gets.chomp
puts "Thank You."
puts "What are the ages of the players you wish to create?(Max of 5)"
player_age_1 = gets.chomp.to_i
player_age_2 = gets.chomp.to_i
player_age_3 = gets.chomp.to_i
player_age_4 = gets.chomp.to_i
player_age_5 = gets.chomp.to_i
player_array = [player_age_1, player_age_2, player_age_3, player_age_4, player_age_5]
puts "Thank You."
event = Event.new(event_name, player_array)
puts "Your event is #{event.name.capitalize}"
puts "Your player ages are #{event.ages}"
puts "The oldest player is #{event.max_age}."
puts "The youngest player is #{event.min_age}."
puts "The average age of your players is #{event.average_age}."
puts "The standard deviation of your players is #{event.standard_deviation_age}"
