class Player
  attr_reader :name, :move, :score
  
  def initialize(name = 'Player', move = nil)
    @name = name
    @move = move
    @score = 0
  end

  def select_move(input)
    valid_input(input).downcase
  end

  def add_point
    @score += 1
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
