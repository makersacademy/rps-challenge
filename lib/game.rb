require_relative 'player'
class Game

  attr_reader :player, :selection

  PERM = [['Rock', 'Scissors'], ['Scissors', 'Paper'], ['Paper', 'Rock']]

  def initialize(player)
    @player = player
    @selection = ['Rock', 'Paper', 'Scissors'].sample
  end

  def assign(player)
    self.player = player
  end

  def reselect
    self.selection = ['Rock', 'Paper', 'Scissors'].sample
  end

  def decide
    if PERM.include?([Rps.game.player.selection, Rps.game.selection])
      :playerwin
    elsif PERM.include?([Rps.game.selection, Rps.game.player.selection])
      :playerlose
    else
      :draw
    end

  end

  private

  attr_writer :player, :selection

end
