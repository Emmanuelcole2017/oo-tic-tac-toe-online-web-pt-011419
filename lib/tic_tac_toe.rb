class TicTacToe
  # initialize assigns an instance variable @board 
  # to an array with 9 blank spaces " "
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  # WIN_COMBINATIONS defines a constant WIN_COMBINATIONS 
  # with arrays for each win combination
  WIN_COMBINATIONS = [[0, 1, 2], [0, 4, 8], [0, 3, 6],
                      [3, 4, 5], [6, 4, 2], [1, 4, 7],
                      [6, 7, 8],            [2, 5, 8]]
                      
  # display_board prints arbitrary arrangements of the board
  def display_board
    row1 = " " + @board[0] + " | " + @board[1] + " | " + @board[2] + " "
    row2 = " " + @board[3] + " | " + @board[4] + " | " + @board[5] + " "
    row3 = " " + @board[6] + " | " + @board[7] + " | " + @board[8] + " "
    row_divide = "------------"
    puts(row1, row_divide, row2, row_divide, row3) 
  end
  
  # input_to_index 
  # Accepts the user's input (a string) as an argument.
  # Converts the user's input (a string) into an integer.
  # Converts the user's input from the user-friendly format 
  # (on a 1-9 scale) to the array-friendly format (where the
  # first index starts at 0).
  def input_to_index(user_input)
    user_input.to_i - 1
  end
  
  # move
  # allows "X" player in the top left and "O" in the middle
  def move(board_index, player_token = "X")
    @board[board_index] = player_token
  end
  
  # position_taken?
  # returns true/false based on whether the position on the
  # board is already occupied
  def position_taken?(index)
    if @board[index] != " "
      true
    else
      false
    end
  end
  
  # valid_move?
  # returns true/false based on whether the position is
  # already occupied
  def valid_move?(index)
    # checks that the attempted move is within the bounds
    # of the game board
    if index < 9
      if position_taken?(index)
        false
      else
        true
      end
    end
  end
  
  # turn_count
  # counts occupied positions
  def turn_count
    occupied_count = 0
    @board.each{|position|
      if position == "X" || position == "O"
        occupied_count += 1
      end
    }
    occupied_count
  end
end