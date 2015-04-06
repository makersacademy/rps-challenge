class Game

  attr_reader :players

  def initialize(players = [])
    @players = players
  end

  def add(player)
    players << player
  end

  def ready?
    has_a_player?
  end

  def has_a_player?
    !players.nil?
  end

  def winner
    case
      when @players[0].move == :scissors && players[1].move == :paper
        return @players[0]
      when @players[0].move == :rock && players[1].move == :scissors
        return @players[0]
      when @players[0].move == :paper && players[1].move == :rock
        return @players[0]
      when @players[1].move == :scissors && players[0].move == :paper
        return @players[1]
      when @players[1].move == :rock && players[0].move == :scissors
        return @players[1]
      when @players[1].move == :paper && players[0].move == :rock
        return @players[1]
      when @players[0].move == @players[1].move
        return "draw"
    end
  end

end
