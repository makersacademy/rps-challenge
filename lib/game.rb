require_relative 'player'
require_relative 'text_maker'
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

  def initialize(text_maker = TextMaker.new, player_class = Player)
    @playerclass = player_class
    @text_maker = text_maker
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
    text_maker.title(player1, player2)
  end

  private
  attr_reader :playerclass, :text_maker
  def computer_player
    @player2 = playerclass.new(:Computer)
  end

  def computer_turn
    player2.choice = [:rock, :paper, :scissors].sample
  end

  def play_text
    text_maker.play_text(player1, player2, resolve(player1, player2))
  end

  def resolve(player1, player2)
    case RESOLVE[player1.choice][player2.choice]
    when :win then player1.name
    when :lose then player2.name
    when :draw then "Nobody"
    end
  end

end
