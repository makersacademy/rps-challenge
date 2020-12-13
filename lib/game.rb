class Game
  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @rps_hash = {
      'Rock' => {"Scissors" => 0, "Paper" => 1},
      'Paper' => {"Rock" => 0 , "Scissors" => 1},
      'Scissors' => {"Paper" => 0, "Rock" => 1}
     }
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def random_choice
    @rps_hash.keys[random_number]
  end

  def declare_winner
    if player_1.choice == player_2.choice then
      "Draw"
    else
      @players[@rps_hash[player_1.choice][player_2.choice]].name + " Wins"
    end
  end

  private

  def random_number
    rand(3)
  end

end
