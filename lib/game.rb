class Game
  attr_accessor :player_move, :computer_move
  attr_reader :player_name

  def initialize(player_name)
    @player_name = player_name
    @game_options = [
      ['rock', 'paper', 'scissors', 'rock'],
      ['paper', 'scissors', 'rock', 'paper'],
      ['scissors', 'rock', 'paper', 'scissors']
    ]
  end

  def get_computer_move
    ['rock', 'paper', 'scissors'].sample
  end

  def game_result
    @game_options.each do |move|
      if player_move == move[0]
        case @computer_move
        when move[1]
          return "Computer wins"
        when move[2]
          return "#{player_name} wins"
        when move[3]
          return "It's a draw, everyone wins"
        end
      end
    end
  end

end
