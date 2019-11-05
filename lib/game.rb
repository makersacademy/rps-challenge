class Game

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def winner(p_1, p_2)
    p_1 == p_2 ? 'Draw' :
    (p_1 == 'Scissors' && ['Paper', 'Lizard'].include?(p_2)) || (p_1 == 'Paper' && ['Rock', 'Spock'].include?(p_2)) || (p_1 == 'Rock' && ['Scissors', 'Lizard'].include?(p_2)) || (p_1 == 'Lizard' && ['Spock', 'Paper'].include?(p_2)) ||
    (p_1 == 'Spock' && ['Rock', 'Scissors'].include?(p_2)) ?
    'You win!' : 'You lose'
  end

  def randomizer
    ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock'].sample
  end

end
