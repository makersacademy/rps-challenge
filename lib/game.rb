class Game

  attr_reader :player_2

  def initialize(choice = 'rock', player_2 = nil)
    @player_1 = choice
    @player_2 = player_2
  end

  def play_rps
    comp_choose_rps if @player_2.nil?
    compare_choices
  end

  def comp_choose_rps
    @player_2 = ['rock', 'paper', 'scissors'].sample
  end

  def compare_choices
    return 'tie' if choices_equal?
    return 'Player 1 Wins!' if player_1_wins?
    
    'Player 2 Wins!'
  end

  private

  def player_1_wins?
    if @player_1 == 'scissors'
      return true if @player_2 == 'paper'
    elsif @player_1 == 'paper'
      return true if @player_2 == 'rock'
    else
      return true if @player_2 == 'scissors'
    end
    false
  end

  def choices_equal?
    @player_1 == @player_2
  end
end
