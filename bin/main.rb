#!/usr/bin/env ruby
require_relative ('../lib/board.rb')
require_relative ('../lib/logic.rb')

puts 'Welcome to Tic Tac TOE'
puts 'Please Read All Rules Carefully'
puts 'To Acquire your box you have to select the number from 1 - 9'
puts 'Sample is given below'
sample_array = [1,2,3,4,5,6,7,8,9]
new_board = Board.new
new_board.display_board(sample_array)
puts
puts 'Your game Starts Now'
puts
new_board.display_board
puts
game = Tic_Tac_Logic.new
player_symbols = ["X", "O"]
player_turn = 1
play_game = false
while play_game == false
print "Player #{player_turn}: Please Select your box (1-9): "
box_selection = gets.chomp.to_i
game_progress = game.check(player_symbols[player_turn - 1], box_selection)
if player_turn == 1 && game_progress[0] == true
  player_turn = 2
elsif player_turn == 2 && game_progress[0] == true
  player_turn = 1
else
  puts "\n Please Select the right move \n"
end
game_progress_array = game_progress[1]
game_progress_array
puts
new_board.display_board(game_progress_array)
if game.win_status[0] == true
  puts "Congratulations!!! Player with '#{game.win_status[1]}' Wins"
  play_game = true
elsif game.draw_status == true
  puts "Game Draws"
  play_game = true
end
end
