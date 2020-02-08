class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def winner
    if [["Paper", "Rock"], ["Rock", "Scissors"], ["Scissors", "Paper"]]
        .include?([player_1.option, player_2.option])
      player_1
    elsif [["Scissors", "Rock"], ["Paper", "Scissors"], ["Rock", "Paper"]]
        .include?([player_1.option, player_2.option])
      player_2
    end
  end    

  def loser
    winner == player_1 ? player_2 : player_1
  end
end
