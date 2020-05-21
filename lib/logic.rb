class Tic_Tac_Logic
  attr_accessor:new_array
  attr_reader:win_array
  attr_accessor:win_variable

  def initialize
    @win_variable = win_variable
    @new_array = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
    @win_array = [[1, 2, 3], [4, 5, 6],[7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [3, 5, 7], [1, 5, 9]]
  end

  def check(symbol, box)
    @symbol = symbol
    box = box - 1
      if box < 0 || box  > 8
      return false, 'Invalid Choice. Please Select 1 - 9 '
      elsif @new_array[box] != '-'
        return false, 'Invalid Move. Already Placed'
      else
        @new_array[box] = @symbol
      end
      return true, @new_array
  end

  def draw_status
    if not @new_array.include? '-'
      return true
    end
  end

  def win_status
    @win_array.each do |x|
      count = 0
      x.each do |y|
        if @new_array[y - 1] == @symbol
          count += 1
          if count == 3
            return true
            count = 0
          end
        end
      end
    end
  end

end
