class Game
  attr_reader :choices, :player, :player_move, :computer_move
  def initialize(player)
    @player = player
    @choices = ['scirrors', 'paper', 'rock']
  end

  def self.create(player)
    @game = Game.new(player)
  end
  
  def self.instance
    @game
  end

  def set_moves(player_move)
    @player_move = player_move
    @computer_move = computer_choice
  end

  def computer_choice
    @choices.sample
  end

  def output
    "tie" if tie?
    winner
  end

  def tie?
    player_move == computer_move
  end

  def winner
    index = choices.index(player_move)
    winning_move = choices[index-1]
    computer.move == winning_move ? "Computer" : player.name
  end
end