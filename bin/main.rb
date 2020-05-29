#!/usr/bin/env ruby

def draw_status(new_array)
  return true unless new_array.include? '-'
end

def win_status(new_array, symbol)
  win_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  win_array.each do |x|
    count = 0
    x.each do |y|
      if new_array[y - 1] == symbol
        count += 1
        return true if count == 3
      end
    end
  end
end

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
    if win_status(my_array, my_array[position]) == true
      puts "#{current_player} wins!! "
      game = false
    elsif draw_status(my_array) == true
      puts 'Game Draw !!'
      game = false
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
