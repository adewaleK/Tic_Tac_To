#!/usr/bin/env ruby

puts 'Welcome to Tic Tac TOE'
puts 'Please Read All Rules Carefully'
puts 'To Acquire your box you have to select the number from 1 - 9'
my_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
my_array.each do |row|
  print row.join(' | ')
  puts
end
puts
puts 'Please Enter First Player Name'
first_player = gets.chomp
puts 'Please Enter Second Player Name'
second_player = gets.chomp
puts "#{first_player} has symbol X and #{second_player} has been assigned symbol O"
my_array = [['-', '-', '-'], ['-', '-', '-'], ['-', '-', '-']]
my_array.each do |row|
  print row.join(' | ')
  puts
end
puts 'Your game start Now'
puts "#{first_player}: Please Select your box (1-9)"
first_player_box_selection = gets.chomp
puts "#{second_player}: Please Select your box (1-9)"
second_player_box_selection = gets.chomp

puts first_player_box_selection
puts second_player_box_selection
