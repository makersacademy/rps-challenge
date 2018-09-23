require "./lib/player"

class Game
  
  attr_reader :player, :computer

  def self.create(player, computer)
    @@game = Game.new(player, computer)
  end

  def self.instance
    @@game
  end

  def initialize(player = Player.new, computer = Player.new)
    @player = player
    @computer = computer
  end

  def round_outcome
    return 'You win!' if player_wins?
    return 'You lose!' if player_loses?
    return "It's a draw!" if draw?
    raise "I don't know who won! " +
          "Player: #{player.choice}, " +
          "Computer: #{computer.choice}"
  end

  private

  def draw?
    player.choice == computer.choice
  end

  def player_loses?
    rock_blunts_scissors?(computer.choice, player.choice) or
    paper_wraps_rock?(computer.choice, player.choice) or
    scissors_cut_paper?(computer.choice, player.choice)
  end

  def player_wins?
    rock_blunts_scissors?(player.choice, computer.choice) or
    paper_wraps_rock?(player.choice, computer.choice) or
    scissors_cut_paper?(player.choice, computer.choice)
  end

  def paper_wraps_rock?(choice_1, choice_2)
    choice_1 == :paper and choice_2 == :rock
  end

  def rock_blunts_scissors?(choice_1, choice_2)
    choice_1 == :rock and choice_2 == :scissors
  end

  def scissors_cut_paper?(choice_1, choice_2)
    choice_1 == :scissors and choice_2 == :paper
  end
end
