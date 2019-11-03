class Game
  attr_reader :outcome

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def winner(p_1, p_2)
    if p_1 == 'Paper' && p_2 == 'Rock'
      @outcome = 'You win!'
    elsif p_1 == 'Scissors' && p_2 == 'Paper'
      @outcome = 'You win!'
    elsif p_1 == 'Rock' && p_2 == 'Scissors'
      @outcome = 'You win!'
    elsif p_1 == p_2
      @outcome = 'Draw'
    else
      @outcome = 'You lose'
    end
    @outcome
  end

  def randomizer
    ['Rock', 'Paper', 'Scissors'].sample
  end

end
