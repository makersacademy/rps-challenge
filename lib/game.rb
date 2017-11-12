require_relative 'player'
require_relative 'computer'

class Game

  DRAW = 0

  def self.options
    @@options = [
                { option: 3, item: :Rock     },
                { option: 2, item: :Scissors },
                { option: 1, item: :Paper    }
    ]
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  attr_reader :player1, :player2, :winner

  def initialize(player1, player2)
    @player1     = player1
    @player2     = player2
    @winner      = false
  end

  def set_choice(player, choice)
    player.receive_choice(Game.options[choice.to_i])
  end

  def decider
    case
      when player1.choice[:option] == 3 && player2.choice[:option] == 1
        champion(player2)
      when player1.choice[:option] == 1 && player2.choice[:option] == 3
        champion(player1)
      when player1.choice[:option] > player2.choice[:option]
        champion(player1)
      when player1.choice[:option] < player2.choice[:option]
        champion(player2)
      else
        draw
    end
  end

  def reset
    player1.receive_choice({})
    player2.receive_choice({})
    @winner = false
  end

  private

  def champion(player)
    @winner = player.name
    player.receive_reward
  end

  def draw
    @winner = DRAW
  end

end
