class Game

  attr_reader :computer 

  def initialize(choice = 'rock')
    @choice = choice
    @computer = nil
  end

  def play_rps
    comp_choose_rps
    compare_choices
  end

  def comp_choose_rps
    @computer = ['rock', 'paper', 'scissors'].sample
  end

  def compare_choices
    return 'tie' if choices_equal?
    return 'Player Wins!' if player_wins?
    'Computer Wins!'
  end

  private

  def player_wins?
    if @choice == 'scissors'
      return true if @computer == 'paper'
    elsif @choice == 'paper'
      return true if @computer == 'rock'
    else
      return true if @computer == 'scissors'
    end
    false
  end

  def choices_equal?
    @choice == @computer
  end

end