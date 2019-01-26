require_relative 'player'

class Game

  attr_reader :player_one, :player_two, :round, :result

  def self.create(player_one, player_two)
    @game = Game.new(player_one, player_two)
  end

  def self.instance
    @game
  end

  def initialize(player_one , player_two)
    @player_one = Player.new(player_one)
    @player_two = player_two
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
