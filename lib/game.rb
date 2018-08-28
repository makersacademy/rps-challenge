class Game

  attr_reader :player_name, :human_move, :computer_move

  def initialize(name)
    @player_name = name
  end

  def selection(move)
    @human_move = move
    @computer_move = computer_move
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