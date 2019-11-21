require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'

# @games = Games.new(year)

puts "Hello. Welcome to Super Sports Games!"
def start
  puts "Please enter the year for the games you want to work with:"
  year = gets.chomp
  puts "Thank You."
  puts "What is the name of the event you wish to create?"
  event_name = gets.chomp.capitalize
  puts "Thank You."
  puts "What are the ages of the players you wish to create?(Total of 5)"
  puts "Player 1"
  player_age_1 = gets.chomp.to_i
  puts "Player 2"
  player_age_2 = gets.chomp.to_i
  puts "Player 3"
  player_age_3 = gets.chomp.to_i
  puts "Player 4"
  player_age_4 = gets.chomp.to_i
  puts "Player 5"
  player_age_5 = gets.chomp.to_i
  player_array = [player_age_1, player_age_2, player_age_3, player_age_4, player_age_5]
  puts "Thank You."
  event = Event.new(event_name, player_array)
  game = Games.new(year)
  game.add_event(event)
  puts "#{game.summary}"

  puts "Do you wish to add another event?(Yes or No)"
  another = gets.chomp
    if another == "Yes"
      start
    else
      puts "#{game.all_events_summary}"
    end
  end
# puts "Do you wish to add another event?(Yes or No)"
# another = gets.chomp.first
# if another == "Y"
#
# else
#   all_event_summery
# end
start
all_event_summery = puts "#{game.all_events_summary}"

#
# puts "Your event is #{event.name.capitalize}"
# puts "Your player ages are #{event.ages}"
# puts "The oldest player is #{event.max_age}."
# puts "The youngest player is #{event.min_age}."
# puts "The average age of your players is #{event.average_age}."
# puts "The standard deviation of your players is #{event.standard_deviation_age}"
