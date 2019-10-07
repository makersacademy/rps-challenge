class Game

  attr_reader :player, :computer

  WINNER = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }

  def self.create_game(player, computer)
    @game = self.new(player, computer)
  end

  def self.get
    @game
  end

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def winner
    if @computer.weapon == @player.weapon
      "It's a draw!"
    elsif @computer.weapon == WINNER[@player.weapon]
      'You win!'
    else
      'Computer wins!'
    end
  end
end
