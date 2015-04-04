class GameMaster
  attr_reader :game

  CHOICES = {
    standard: [:rock, :paper, :scissors]
  }

  def initialize game = :standard
    @game = game
    @players = []
  end

  def add player
    players << player
  end

  def remove player
    players.delete(player)
  end

  def winner
    compare_choices
  end

  def show_players
    players.map { |p| p.name }.join(', ')
  end

  private

  attr_reader :players

  def compare_choices
    p1 = CHOICES[game].find_index(players[1].choice)
    p0 = CHOICES[game].find_index(players[0].choice)
    outcome = (3 + p1 - p0) % 3
    if outcome.zero?
      'draw'
    else
      decide_winner(outcome)
    end
  end

  def decide_winner outcome
    outcome.odd? ? players[1].name : players[0].name
  end
end
