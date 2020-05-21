#!/usr/bin/env ruby

puts 'Welcome to Tic Tac TOE'
puts 'Please Read All Rules Carefully'
my_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
my_array.each do |row|
  print row.join(' | ')
  puts
end
puts
puts 'First Player : Please Enter Your Name'
first_player = gets.chomp
puts 'Second Player : Please Enter Your Name'
second_player = gets.chomp
puts "#{first_player} has symbol X and #{second_player} has been assigned symbol O"
my_array = ['-', '-', '-',
            '-', '-', '-',
            '-', '-', '-']
puts "#{my_array[0]} | #{my_array[1]} | #{my_array[2]} "
puts "#{my_array[3]} | #{my_array[4]} | #{my_array[5]} "
puts "#{my_array[6]} | #{my_array[7]} | #{my_array[8]} "
current_player = first_player
game = true
while game
  puts 'To Acquire your box you have to select the number from 1 - 9'
  puts "#{current_player} please select your box"
  position = gets.chomp.to_i
  position -= 1
  if position >= 0 and position <= 8 and my_array[position] == '-'
    my_array[position] =
      if current_player == first_player
        'X'
      else
        'O'
      end
    current_player =
      if current_player == first_player
        second_player
      else
        first_player
      end
  else
    puts 'Invalid move'
  end
  puts "#{my_array[0]} | #{my_array[1]} | #{my_array[2]} "
  puts "#{my_array[3]} | #{my_array[4]} | #{my_array[5]} "
  puts "#{my_array[6]} | #{my_array[7]} | #{my_array[8]} "
end
