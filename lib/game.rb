class Game

  WINNER = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def winner
    if @computer.random_choice == WINNER[@player.weapon.downcase]
      @player
    end
  end

end
