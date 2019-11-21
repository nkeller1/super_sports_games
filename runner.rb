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
puts "What are the ages of the players you wish to create?"
player_ages = gets.chomp.to_a
puts "Thank You."
event = Event.new(event_name, player_ages)
puts "The average age of your players is #{event.average_age}"
