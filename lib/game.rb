class Game

  def self.create(player)
    @game_state = Game.new(player)
  end

  def self.instance
    @game_state
  end

  attr_reader :player, :player_move, :computer_move

  MOVES = [:rock, :paper, :scissors]
  WINNING_PAIRS = {rock: :scissors, paper: :rock, scissors: :paper}

  def initialize(player)
    @player = player
    @computer = Computer.new
  end

  def make_move(move)
    @player_move = move.to_sym
  end

  def make_computer_move
    @computer_move = @computer.choose_move
  end

  def winner
    if @computer_move == @player_move
      return "No one"
    elsif WINNING_PAIRS[@player_move] == @computer_move
      return :player
    else
      return :computer
    end 
  end
end