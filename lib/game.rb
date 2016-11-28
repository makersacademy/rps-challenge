class Game
  @new_game = nil
  attr_reader :player, :computer

  def self.get
    @new_game
  end

  def self.set(player, computer)
    @new_game = Game.new(player, computer)
  end

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
    @p = player_choice
    @c = computer_choice
    x = (3 + n(@p) - n(@c)) % 3
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
