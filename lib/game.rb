class Game

  def self.create(player)
    @game_state = Game.new(player)
  end

  def self.instance
    @game_state
  end

  attr_reader :player, :computer_move

  MOVES = [:rock, :paper, :scissors]
  WINNING_PAIRS = {rock: :scissors, paper: :rock, scissors: :paper}

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def make_computer_move
    @computer_move = @computer.move
  end

  def winner
    make_computer_move
    if @computer_move == @player.move
      return "No one"
    elsif WINNING_PAIRS[@player.move] == @computer_move
      return :player
    else
      return :computer
    end 
  end
end