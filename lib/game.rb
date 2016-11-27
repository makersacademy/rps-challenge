class Game
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def player_choice
    @player.choice
  end

  def computer_choice
    @computer.choice
  end

  def winner
    algorithm(player_choice, computer_choice)
  end

  private

  def algorithm(player_choice, computer_choice)
    x = (3 + n(player_choice) - n(computer_choice)) % 3
    return :tie if x == 0
    return @player if x.odd?
    return @computer if x.even?
  end

  def n(input)
    return 0 if input == :rock
    return 1 if input == :paper
    return 2 if input == :scissors
  end





end
