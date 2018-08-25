class Game

  attr_reader :player_name, :computer_name, :player_move, :computer_move

  def initialize (player_name = 'Player', computer_name = 'COMPUTER')
    @player_name = player_name
    @computer_name = computer_name
    @player_move = nil
    @computer_move = nil
  end

  def player_move_set(move)
    @player_move = move
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

end
