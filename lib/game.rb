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
    if player_1.option == "Rock" && ["Scissors", "Lizard"].include?(player_2.option) ||
        player_1.option == "Paper" && ["Rock", "Spock"].include?(player_2.option) ||
        player_1.option == "Scissors" && ["Paper", "Lizard"].include?(player_2.option) ||
        player_1.option == "Spock" && ["Scissors", "Rock"].include?(player_2.option) ||
        player_1.option == "Lizard" && ["Spock", "Paper"].include?(player_2.option) 
      player_1
    elsif player_1.option == player_2.option; nil
    else; player_2
    end
  end    

  def loser
    winner == player_1 ? player_2 : player_1
  end
end
