class Game
  attr_reader :current_turn, :players

  def self.instance
    @game
  end

  def self.create(player_one, player_two)
    @game = Game.new(player_one, player_two)
  end

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
    @current_turn = player_one
  end

  def player_one
    @players.first
  end

  def player_two
    @players.last
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(player)
    players_who_are_not(player).first
  end

  def players_who_are_not(the_player)
    players.select { |player| player != the_player }
  end
end
