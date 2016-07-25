
class Game

  attr_reader :player, :selection, :computer_selection, :outcome

CHOICE = [:rock, :paper, :scissors]

BEATS = { rock: {rock: :draw, paper: :lose, scissors: :win},
          paper: {paper: :draw, scissors: :lose, rock: :win},
          scissors: {scissors: :draw, rock: :lose, paper: :win}
        }

  def initialize(player)
    @player = player
  end

  def rock
    @selection = CHOICE[0]
  end

  def paper
    @selection = CHOICE[1]
  end

  def scissors
    @selection = CHOICE[2]
  end

  def computer
    @computer_selection = CHOICE.sample
  end

  def result
    @outcome = BEATS[@selection][@computer_selection]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
