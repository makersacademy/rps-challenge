class Game

  def initialize(choice = 'rock')
    @choice = choice
    @computer = choose_rps
  end

  def choose_rps
    ['rock', 'paper', 'scissors'].sample
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