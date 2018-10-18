class Game
  WIN_CONDITIONS = [
    ["Rock", "Scissors"],
    ["Scissors", "Paper"],
    ["Paper", "Rock"]
  ]

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def result
    winner(@player_one, @player_two)
  end

  private

  def winner(a, b)
    if WIN_CONDITIONS.include?([a.choice, b.choice])
      a
    elsif WIN_CONDITIONS.include?([b.choice, a.choice])
      b
    else
      "tie"
    end
  end
end
