require_relative 'player'
class Game

  attr_reader :player, :selection

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

  private

  attr_writer :player, :selection

end
