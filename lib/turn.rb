def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if board[index] == " " && index >= 0
    return true
  else
    return false
  end
end

#re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def move(board, idx, char = "X")
  board[idx] = char
end

def turn(board)
  puts "Please enter 1-9:"
  inp = gets.chomp

  i = input_to_index(inp)

  if valid_move?(board,i) == false
    puts "Please re-enter your input:"
    gets.chomp
  end

  move(board, i)
  display_board(board)
end
