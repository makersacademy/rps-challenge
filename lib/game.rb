require_relative 'evaluate'

class Game

  def self.instance
    @game
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  attr_reader :player_1

  attr_accessor :choices

  def initialize(player_1)
    @player_1 = player_1
    @choices = []
  end

  def player_1_choice
    @choices[0].downcase
  end

  def player_2_choice
    @choices[1].downcase
  end

  def result
    answer = evaluate
    winner(answer)
  end

  private

  def winner(answer)
    return "The winner is #{@player_1}" if answer == 'player_1_win'
    return "The winner is the computer" if answer == 'player_2_win'
    return "It's a draw" if answer == 'draw'
  end

  def evaluate
    subject = Evaluate.new
    subject.evaluate(@choices)
  end

end
