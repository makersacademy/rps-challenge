class Game
  attr_reader :name

  def initialize
    @possibility_1 = ['Paper', 'Rock']
    @possibility_2 = ['Paper', 'Scissors']
    @possibility_3 = ['Rock', 'Scissors']
    @name = 'The Computer'
  end

  def random_selection
    ["Rock", "Paper", "Scissors"].sample
  end

  def game_results(player_choice, game_choice)
    @game_array = [player_choice, game_choice]
    return "Noone! It's a Draw" if player_choice == game_choice

    possibility_checker
  end

  def player_wins?(player_choice, result)
    player_choice == result 
  end
  private #-------------------------

  def possibility_checker
    if @game_array.sort == @possibility_1
      'Paper'
    elsif @game_array.sort == @possibility_2
      'Scissors'
    elsif @game_array.sort == @possibility_3
      'Rock'
    end
  end
end
