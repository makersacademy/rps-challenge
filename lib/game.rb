class Game

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def result
    return :draw if draw?
    win? ? :win :(:lose)
  end

  private

  def draw?
    @player.player_weapon == @computer.computer_choice
  end

  def win?
    RULES[@player.player_weapon] == @computer.computer_choice
  end

end
