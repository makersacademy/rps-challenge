class Game

  attr_reader :player_1, :player_2
  
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def game_over(player_1, player_2)
    if player_1 == "Rock" && player_2 == "Scissors"
      "#{@player_1.name} wins"
    elsif player_1 == "Rock" && player_2 == "Paper"
      "#{@player_2.name} wins"
    elsif player_1 == "Paper" && player_2 == "Rock"
      "#{@player_1.name} wins"
    elsif player_1 == "Paper" && player_2 == "Scissors"
      "#{@player_2.name} wins"
    elsif player_1 == "Scissors" && player_2 == "Paper"
      "#{@player_1.name} wins"
    elsif player_1 == "Scissors" && player_2 == "Rock"
      "#{@player_2.name} wins"
    else
      "It's a draw"
    end
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end
  
  def self.instance
    @game
  end

end
