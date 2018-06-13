def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  spot = index.to_i - 1
  if !position_taken?(board,index) && index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board,index)

  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index (user_input)
  "#{user_input}".to_i - 1#input converted to integer
end

def move(array,index,value = "X" )
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  boolCheck  = false

  while boolCheck == false
    input = gets.strip # convert the value
    location = input_to_index(input) #converted to integer

    if valid_move?(board,location) == false #value check forced entry
      puts "Not a valid move. Please try again."
    else
      boolCheck = true
      move(board,location,)
      display_board(board)

    end

  end
end


=begin
boolCheck = false
while boolCheck == false
  input = gets.strip # convert value
  location = input_to_index(input)

  if valid_move?(board,location) == false #value check
      puts "Not a valid choice. Please try again"
    else
      boolCheck = true
      move(board,user_input,current_player(board))
      display_board(board)
    end
  end
=end
