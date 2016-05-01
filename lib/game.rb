class Game

  WINNING_MOVES = { 'Scissors' => ['Paper', 'Lizard'],
                    'Paper' => ['Rock', 'Spock'],
                    'Rock' => ['Scissors', 'Lizard'],
                    'Lizard' => ['Paper', 'Spock'],
                    'Spock' => ['Scissors', 'Rock'] }

  attr_reader :player_1, :player_2, :current_player
  
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end

  def switch_turns
    @current_player == player_1 ? @current_player = player_2 : @current_player = player_1
  end

  def pick_choice(choice)
    current_player.choose(choice)
  end

  def player_choice(player)
    player.choice
  end

  # def calculate
  #   if player_1 && player_2

    
  # end

end

