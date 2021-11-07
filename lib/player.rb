class Player
  attr_reader :name, :move
  
  def initialize(name = 'Player', move = nil)
    @name = name
    @move = move
  end

  def select_move(input)
    valid_input(input).downcase
  end

private

  def valid_input(input)
    if input.downcase == 'rock'
      @move = input
    elsif input.downcase == 'paper'
      @move = input
    elsif input.downcase == 'scissors'
      @move = input
    else
      @move = "Invalid user move"
    end
  end
end
