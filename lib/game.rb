class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def assign(player, move)
    player.assigned(move)
  end

  def winner
    result(player_1.move, player_2.move)
  end

# Need time to look at how to implement this and change other files accordingly
# to remove reliance on global variables 
  # def self.create(player_1, player_2)
  #   @game = Game.new(player_1, player_2)
  # end
  #
  # def self.instance
  #   @game
  # end

  private

  def result(move_1, move_2)
    if move_1 == move_2
      "It was a draw!"
    elsif move_1 == "Rock" && move_2 == "Paper"
      "#{player_2.name} wins!"
    elsif move_1 == "Rock" && move_2 == "Scissors"
      "#{player_1.name} wins!"
    elsif move_1 == "Paper" && move_2 == "Rock"
      "#{player_1.name} wins!"
    elsif move_1 == "Paper" && move_2 == "Scissors"
      "#{player_2.name} wins!"
    elsif move_1 == "Scissors" && move_2 == "Rock"
      "#{player_2.name} wins!"
    elsif move_1 == "Scissors" && move_2 == "Paper"
      "#{player_1.name} wins!"
    end
  end

end
