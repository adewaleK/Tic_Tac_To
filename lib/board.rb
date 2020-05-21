class Board
  attr_reader :new_array

  def initialize
    @new_array = ['-','-','-','-','-','-','-','-','-']
  end
  
  def display_board(array_my = nil)
    array_my == nil ? display_array = @new_array : display_array = array_my
    count = 0
    display_array.each do |x|
      print " #{x} "
      count += 1
      if count == 3
        puts
        count = 0
      else
        print "|"
      end
    end
  end
end
