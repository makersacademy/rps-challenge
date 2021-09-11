class RPS

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
  end

  attr_reader :players

  def self.new_game(player_one, player_two)
    @rps = RPS.new(player_one, player_two)
  end

  def self.current_game
    @rps
  end

  def player_one
    @players[0]
  end

  def player_two
    @players[1]
  end

  def show_winner(player_choice)
    p1 = player_choice
    p2 = get_computer_choice
    calculate_winner(p1,p2)
  end

  private 

  def calculate_winner(p1,p2)
    if p1 == p2
      "Draw...A fair fight is a fair fight, you both chose #{p1}"
    elsif win_matrix[p1] == p2
      "Congratulations! Your #{p1} demolished #{@players[1].name}'s #{p2}"
    else
      "Unlucky, your #{p1} was beaten by #{@players[1].name}'s #{p2}"
    end
  end

  def win_matrix
    { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
  end

  def get_computer_choice
    @player_two.chose
  end

end