require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def play(player_1_choice)
    @player_1.pick_specified player_1_choice
    @player_2.pick_random
  end

  def result
    return "It's a draw!" if draw?
    p winner
    "#{winner.name} wins!"
  end

  private

  def draw?
    @player_1.choice == @player_2.choice
  end

  def winner
    p @player_1.choice, @player_2.choice
    case @player_1.choice
    when 'Rock'
      return @player_1 if @player_2.choice == 'Scissors'
      p 'getting to returning player 2'
      @player_2
    when 'Paper'
      return @player_1 if @player_2.choice == 'Rock'
      @player_2
    when 'Scissors'
      return @player_1 if @player_2.choice == 'Paper'
      @player_2
    end
  end

end
