class Game

  attr_reader :players

  WEAPON = {rock: :scissors, paper: :rock, scissors: :paper}

  def initialize
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def player
    @players.first
  end

  def opponent
    @players.last
  end

  def player_win?
    return nil if player.decision == opponent.decision
    return true if WEAPON[player_weapon] == opponent_weapon
    false
  end

  def winner
    return nil if player_win?.nil?
    player_win? ? player : opponent
  end

  def self.find(id)
    @games[id]
  end

  def self.add(id, game)
    @games[id] = game
  end

  def self.games
    @games ||= {}
  end

  private

  def player_weapon
    player.decision.to_sym
  end

  def opponent_weapon
    opponent.decision.to_sym
  end



end
