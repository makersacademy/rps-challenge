class Game
  @new_game = nil
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.instance
    @new_game
  end

  def self.create(player, computer)
    @new_game = Game.new(player, computer)
  end

  def player_choice
    @player.choice
  end

  def computer_choice
    @computer.choose_weapon
  end

  def result
    algorithm
  end

  private

  def algorithm
    a = player_choice
    b = computer_choice
    x = (3 + n(a) - n(b)) % 3
    return :tie if x == 0
    return :win if x.odd?
    return :lose if x.even?
  end

  def n(input)
    return 0 if input == :rock
    return 1 if input == :paper
    return 2 if input == :scissors
  end





end
