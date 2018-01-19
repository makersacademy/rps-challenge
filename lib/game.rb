class Game

  def self.create(player)
    @game_state = Game.new(player)
  end

  def self.instance
    @game_state
  end

  attr_reader :player, :player_move, :computer_move

  def initialize(player)
    @player = player
    @computer = Computer.new
  end

  def make_move(move)
    @player_move = move
  end

  def computer_move
    @computer_move = @computer.choose_move
  end

end