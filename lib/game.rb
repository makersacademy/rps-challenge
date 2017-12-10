require_relative 'player'
class Game
  attr_accessor :player1, :player2
  class << self
    attr_accessor :game
  end

  RESOLVE = {
    rock: { scissors: :win, paper: :lose, rock: :draw },
    paper: { scissors: :lose, paper: :draw, rock: :win },
    scissors: { scissors: :draw, paper: :win, rock: :lose }
  }

  def initialize(player_class = Player)
    @playerclass = player_class
  end

  def play
    computer_player unless player2
    if player1.choice
      computer_turn if player2.name == :Computer
      play_text
    else
      nil
    end
  end

  def title
    p player1
    p player2
    "#{player1.name} VS #{player2.name}"
  end

  private
  attr_reader :playerclass
  def computer_player
    @player2 = playerclass.new(:Computer)
  end

  def computer_turn
    player2.choice = [:rock, :paper, :scissors].sample
  end

  def play_text
    "#{choice_text(player1)},<br>#{choice_text(player2)},<br>#{resolve(player1, player2)} Wins!"
  end

  def choice_text(player)
    "#{player.name} chooses #{player.choice}"
  end

  def resolve(player1, player2)
    p player1.choice
    p player2.choice
    case RESOLVE[player1.choice][player2.choice]
    when :win then player1.name
    when :lose then player2.name
    when :draw then "Nobody"
    end
  end

end
