class Game

  attr_reader :player, :comp_choice

  def initialize(player)
    @player = player    
  end

  def player_name
    @player.name
  end

  def make_player_choice(choice)
    @player.make_choice(choice)
    make_comp_choice
  end

  def player_choice
    @player.choice
  end
  
  def make_comp_choice
    @comp_choice = ['Rock', 'Paper', 'Scissors'].sample
  end

  def tie?
    player_choice == comp_choice
  end

  def player_wins?
    (player_choice == 'Rock' && comp_choice == 'Scissors') or
    (player_choice == 'Paper' && comp_choice == 'Rock') or
    (player_choice == 'Scissors')
  end

  def results_message
    if tie?
      'The game was a tie'
    elsif player_wins?
      "#{player.name} wins"
    else 
      "The computer wins"
    end
  end

end
