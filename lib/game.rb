class Game

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def winner(p_1, p_2)
    beatmap = {  'Scissors' => 'Paper',
      'Paper' => 'Rock',
      'Rock' => 'Scissors' }
    if beatmap[p_1] == p_2
      'You win!'
    elsif p_1 == p_2
      'Draw'
    else
      'You lose'
    end
  end

  def randomizer
    ['Rock', 'Paper', 'Scissors'].sample
  end

end
