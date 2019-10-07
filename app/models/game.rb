class Game

  attr_reader :player, :round

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
    @round = []
  end

  def player_one_turn(choice)
    round << choice
  end

  def computer_turn
    round << rand(1..3)
  end

  def translate(num)
    if num == 1
      return 'rock'
    elsif num == 2
      return 'paper'
    elsif num == 3
      return 'scissors'
    end
  end

  def reset
    @round = []
  end

  def result
    if round[0] == round[1]
      'IT\'S A DRAW!'
    elsif round.sum == 4
      round[0] == 1 ? 'YOU WIN!' : 'YOU LOSE!'
    else
      round[0] > round[1] ? 'YOU WIN!' : 'YOU LOSE!'
    end
  end

end
