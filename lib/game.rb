class Game
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
    @results = {"rock" => [["blunts", "scissors"],["crushes","lizard"]],
      "scissors" => [["cut", "paper"],["decapitate", "lizard"]],
      "paper" => [["covers", "rock"],["disproves", "Spock"]],
      "lizard" => [["eats", "paper"], ["poisons", "Spock"]],
      "Spock" => [["vaporizes", "rock"], ["smashes", "scissors"]]}
  end

  def result
    return :win if player_wins?
    return :lose if player_loses?
    :draw
  end

  def verb
    if player_wins?
      return which_verb(player, computer)
    else
      return which_verb(computer, player)
    end
  end

  private

  def player_loses?
    player == check_choice(computer, 0) || player == check_choice(computer, 1)
  end

  def player_wins?
    computer == check_choice(player, 0) || computer == check_choice(player, 1)
  end

  def check_choice(player, number)
    @results[player][number][1]
  end

  def which_verb(winner, loser)
    return check_verb(winner, 0) if loser == check_choice(winner, 0)
    check_verb(winner, 1)
  end

  def check_verb(player, number)
    @results[player][number][0]
  end

end