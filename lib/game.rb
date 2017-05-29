class Game

  attr_reader :player, :opponent
  attr_accessor :result

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
    @result = nil
  end

  def self.create(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

  def rps
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def compete(player, opponent)
    if player == 'Rock'
      if opponent == 'Rock'
        return 'A draw!'
      elsif opponent == 'Scissors'
        self.player.score += 1
        return 'You win! Rock beats scissors!'
      else
        self.opponent.score += 1
        return 'You lose! Paper beats rock!'
      end
    elsif player == 'Paper'
      if opponent == 'Paper'
        return 'A draw!'
      elsif opponent == 'Rock'
        self.player.score += 1
        return 'You win! Paper beats rock!'
      else
        self.opponent.score += 1
        return 'You lose! Scissors beats paper'
      end
    else
      if opponent == 'Scissors'
        return 'A draw!'
      elsif opponent == 'Paper'
        self.player.score += 1
        return 'You win! Scissors beats paper'
      else
        self.opponent.score += 1
        return 'You lose! Rock beats scissors!'
      end
    end
  end

end
