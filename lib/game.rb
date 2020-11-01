class Game

  def self.create(game_logic, player1, player2)
    @game = Game.new(game_logic, player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(game_logic, player1, player2)
    @game_logic_class = game_logic
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def winner
    determin_winner
  end

  private
  attr_reader :players

  def determin_winner
    case @game_logic_class.new.result(player1.choice, player2.choice)
    when 'draw'
      "It is a Draw!"
    when 'player1'
      player1.name
    when 'player2'
      player2.name
    end
  end
end
