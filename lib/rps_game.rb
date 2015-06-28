class RockPaperScissors

  CHOICES = ['rock', 'paper', 'scissors']

  attr_reader :player_selection

  def initialize player_selection
    raise "Input must be rock, paper or scissors!" unless valid_choices_include player_selection
    @player_selection = player_selection.downcase
  end

  def opponents_selection
    ['rock', 'paper', 'scissors'].sample
  end


  def winner
    return "It's a draw" if player_selection == opponents_selection
    if player_selection == 'rock'
      rocks_winners_and_losers
    elsif player_selection == 'paper'
      papers_winners_and_losers
    elsif player_selection == 'scissors'
      scissors_winners_and_losers
    end
  end

  private

  def valid_choices_include player_selection
    CHOICES.include?(player_selection.to_s.downcase)
  end

  def rocks_winners_and_losers
    return "You win!! :)"  if opponents_selection == 'scissors'
    return "You lose! :(" if opponents_selection == 'paper'
  end

  def papers_winners_and_losers
    return "You win!! :)"  if opponents_selection == 'rock'
    return "You lose! :(" if opponents_selection == 'scissors'
  end

    def scissors_winners_and_losers
    return "You win!! :)"  if opponents_selection == 'paper'
    return "You lose! :(" if opponents_selection == 'rock'
  end


end