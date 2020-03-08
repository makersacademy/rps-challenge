class Game

  attr_reader :player_1, :player_2, :result

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def calculate_result
    return @result = 'draw' if @player_1.move == @player_2.move

    @result = player_1_wins? ? @player_1 : @player_2
    update_scores
  end

  private

  def update_scores
    @result.score += 1
  end

  def player_1_wins?
    to_win = { 👊🏼: ['✌🏼', '🦎'], 🤚🏼: ['👊🏼', '👽'], ✌🏼: ['🤚🏼', '🦎'], 🦎: ['👽', '🤚🏼'], 👽: ['✌🏼', '👊🏼'] }
    to_win[@player_1.move.to_sym].include? @player_2.move
  end

end
