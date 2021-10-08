class Game
  attr_reader :choices, :player, :player_move, :computer_move
  def initialize(player, weapons_class = Weapons)
    @player = player
    @weapons_class = weapons_class
    @paper = @weapons_class.new('paper', ["scissors", "lizard"])
    @rock= @weapons_class.new('rock',["paper", "spock"])
    @scissors = @weapons_class.new('scissors',["rock", "spock"])
    @lizard = @weapons_class.new('lizard',["rock", "scissors"])
    @spock = @weapons_class.new('spock',["paper", "lizard"])
    @choices = ['scissors', 'paper', 'rock']
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
    return "tie" if tie?
    winner
  end

  def tie?
    player_move == computer_move
  end

  def winner
    index = choices.index(player_move)
    winning_move = choices[index-1]
    computer_move == winning_move ? "Computer" : player.name
  end
end