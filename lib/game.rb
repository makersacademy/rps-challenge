class Game
  attr_reader :player

  def initialize(player, _computer = Computer.new)
    @player = player
  end

  def winner; end

  # player.selected_option compare with computer.computer_choice
end
