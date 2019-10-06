class Game
  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  attr_reader :player_1, :player_2, :winner, :loser, :p1_score, :p2_score
  def initialize(player_1, player_2, rules_instance = Rules)
    @player_1 = player_1
    @player_2 = player_2
    @rules_instance = rules_instance
    @p1_score = 0
    @p2_score = 0
  end

  def result
    @winner, @loser = nil
    @winner, @loser = @player_1, @player_2 if p1_wins
    @winner, @loser = @player_2, @player_1 if p2_wins
  end

  def track_scores
    @p1_score += 1 if p1_wins
    @p2_score += 1 if p2_wins
  end

  private

  def p1_wins
    @rules_instance.new.defeats?(@player_1.weapon, @player_2.weapon)
  end

  def p2_wins
    @rules_instance.new.defeats?(@player_2.weapon, @player_1.weapon)
  end

end
