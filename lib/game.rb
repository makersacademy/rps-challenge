class Game

  attr_reader :player_name, :last_move

  def initialize(name)
    @player_name = name
  end

  def selection(move)
    @last_move = move
  end

  private

  def computer_move
    number = rand(3)
    case number
      when 0
        'rock'
      when 1
        'paper'
      when 2
        'scissors'
    end
  end



end