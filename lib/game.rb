class Game

  def self.create(player, player2 = Computer.new)
    @game_state = Game.new(player, player2)
  end

  def self.instance
    @game_state
  end

  MOVES = [:rock, :paper, :scissors]
  WINNING_PAIRS = {rock: :scissors, paper: :rock, scissors: :paper}

  def initialize(player, player2)
    @players = [player,player2]
  end

  def player
    @players[0]
  end

  def player2
    @players[1]
  end

  def swap_players
    @players.rotate!
  end

  def winner
    if player2.move == player.move
      return "No one"
    elsif WINNING_PAIRS[player.move] == player2.move
      return player.name
    else
      return player2.name
    end 
  end
end