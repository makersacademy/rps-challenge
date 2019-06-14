class Game
  attr_reader :player_name, :player_choice, :comp_choice, :result

  def initialize(player_name)
    @player_name = player_name
    @player_choice = ''
    @comp_choice = ''
    @result = ''
  end

  def decide(selection)
    @comp_choice = random
    @player_choice = selection.downcase.capitalize
    if @player_choice == 'Rock' && @comp_choice == 'Scissors'
      @result = 'Win'
    elsif @player_choice == 'Paper' && @comp_choice == 'Rock'
      @result = 'Win'
    elsif @player_choice == 'Scissors' && @comp_choice == 'Paper'
      @result = 'Win'
    else
      @result = 'Lose'
    end
  end

  def random
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
