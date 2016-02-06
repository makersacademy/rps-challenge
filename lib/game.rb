class Game
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
    @results = {"rock" => ["blunts", "scissors"],
      "scissors" => ["cut", "paper"],
      "paper" => ["covers", "rock"]}
  end

  def player_loses?
    check_choice(computer) ==  player
  end

  def player_wins?
    check_choice(player) ==  computer
  end

  def verb
    if player_wins?
      return check_verb(player)
    else
      return check_verb(computer)
    end
  end

  private

  def check_choice(player)
    @results[player][1]
  end

  def check_verb(player)
    @results[player][0]
  end

end