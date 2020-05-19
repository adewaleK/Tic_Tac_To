#!/usr/bin/env ruby
puts 'Welcome to Tic Tac TOE'
puts 'Please Read All Rules Carefully'
puts 'To Acquire your box you have to select the number from 1 - 9'
puts 'Sample is given below'
sample_array = [1,2,3,4,5,6,7,8,9]
count = 0
sample_array.each do |x|
          print " #{x} "
          count += 1
            if count == 3
              puts
              count = 0
            else
              print "|"
            end
        end
puts
puts 'Your game Starts Now'
puts
empty_array = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
count = 0
empty_array.each do |x|
          print " #{x} "
          count += 1
            if count == 3
              puts
              count = 0
            else
              print "|"
            end
        end
puts
player_symbols = ["X", "O"]
play_game = false
while play_game == false
print "Player #{player_turn}: Please Select your box (1-9): "
box_selection = gets.chomp.to_i
  puts "\n Please Select the right move \n"
end
puts
if game.win_status[0] == true
  puts "Congratulations!!! Player with '#{game.win_status[1]}' Wins"
  play_game = true
elsif game.draw_status == true
  puts "Game Draws"
  play_game = true
end
end
