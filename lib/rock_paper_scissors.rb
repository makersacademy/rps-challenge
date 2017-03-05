require_relative 'player'
require_relative 'opponent'

class RPS

  attr_reader :player, :opponent, :player_choice, :opponent_move

  RULES = {Rock: :Scissors,
           Paper: :Rock,
           Scissors: :Paper}

  def initialize(player, opponent=Opponent.new)
    @player = player
    @opponent = opponent
    @opponent_move
  end

  def self.create(player)
    @player = Player.new(player)
    @game = RPS.new(player=@player)
  end

  def self.instance
    @game
  end

  def display_players(name=@player)
    name
  end

  def win
    "Congratulations, you have won!"
  end

  def outcome
    @opponent_move = @opponent.move
    return :tie if same_choice?
    return :win if player_wins?
    return :lose if player_loses?
  end

  def lose
    "Unlucky, you have lost!"
  end

  def tie
    "It's a tie!"
  end
  
  private

  def same_choice?
    @player.player_choice == @opponent_move
  end

  def player_wins?
    RULES[@player.player_choice] == @opponent_move
  end

  def player_loses?
    RULES[@player.player_choice] != @opponent_move
  end
end
