class Game
  attr_reader :hand_value, :players, :player1, :player2


  RULES = {"rock" => "scissors", "paper" => "rock", "scissors" => "paper"}
  def initialize
    @players = []
  end

  def cpu_random_hand
    @hand_value = %w(Rock Paper Scissors).sample
  end

  def add_player(player)
    fail 'Sorry! 2 players only!' if players.count >= 2
    @players << player
  end

  def winner
    player2_person_or_cpu?
    comparing_hands
  end

  def player2_person_or_cpu?
    @player1 = players[0]
    if @players.length == 1
      @player2 = Struct.new(:name, :hand_value).new("CPU", cpu_random_hand.downcase )
    else
      @player2 = @players[1]
    end
  end

  def comparing_hands
    fail "Tie!" if player1.hand_value.downcase == player2.hand_value.downcase
    RULES[player1.hand_value.downcase] == player2.hand_value.downcase ? player1 : player2
  end
end
