class Game

  def self.store_game(game)
    @this_game = game
  end

  def self.show_game
    @this_game
  end

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
    @weapon1 = player.weapon.to_sym
    @weapon2 = computer.choice.to_sym
  end

  def outcome
    draw? ? "It's a draw!" : win
  end

  private

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def win
    if @weapon2 == RULES[@weapon1]
      "You win!"
    elsif @weapon1 == RULES[@weapon2]
      "The computer wins!"
    end
  end

  def draw?
   @weapon1 == @weapon2 ? true : false
  end
end
