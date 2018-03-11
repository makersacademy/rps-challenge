class Game
  attr_reader :game_type, :number_of_players
  attr_accessor :result, :player1, :player2

  def initialize(number_of_players, game_type)
    @number_of_players = number_of_players
    @game_type = game_type

    @result = nil
    @player1 = nil
    @player2 = nil
  end

  def self.create(number_of_players, game_type)
    @game = Game.new(number_of_players, game_type)
  end

  def self.instance
    @game
  end

  # can be written cleaner / rubocop going nuts
  def return_result(player1, player2)
    return player1.name if player1.action == 'rock' && player2.action == 'scissors'
    return player1.name if player1.action == 'scissors' && player2.action == 'paper'
    return player1.name if player1.action == 'paper' && player2.action == 'rock'
    return 'tie' if player1.action == player2.action
    player2.name
  end
end
