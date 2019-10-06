class Game

  attr_reader :player, :computer

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    return "It's a draw!" if @player.move == @computer.move
    return "#{@player.name} wins!" if player_wins?
    "Computer wins!"
  end

  private

  def player_wins?
    actual_scenario = { player: @player.move, computer: @computer.move }
    player_win_scenarios = [
      { player: "Rock", computer: "Scissors" },
      { player: "Paper", computer: "Rock" },
      { player: "Scissors", computer: "Paper" },
    ]
    player_win_scenarios.include?(actual_scenario)
  end

end
