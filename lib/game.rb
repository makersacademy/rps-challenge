require_relative 'player'
require_relative 'computer'

class Game

  def self.store_game(game)
    @this_game = game
  end

  def self.show_game
    @this_game
  end

  attr_reader :player, :computer, :weapon1, :weapon2

  RULES = { rock:     [:scissors, :lizard],
            scissors: [:paper,    :lizard],
            lizard:   [:paper,    :spock],
            paper:    [:rock,     :spock],
            spock:    [:rock,     :scissors] }

  def initialize(player, computer)
    @player = player
    @weapon2 = computer.choice.to_sym
  end

  def weapon1
    @weapon1 = @player.weapon.to_sym
  end

  def outcome
     draw ? "It's a draw!" : win
  end

  private

  def draw
      weapon1
      @weapon1 == @weapon2
  end

  def win
    if RULES[@weapon1].include?(@weapon2)
      "You win!"
    elsif RULES[@weapon2].include?(@weapon1)
      "The computer wins!"
    end
  end

end
