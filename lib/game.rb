class Game

  attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    @current_player = opponent_of(current_player)
  end

  def winner(player_1, player_2)
    if player_1.action == "Rock" && player_2.action == "Scissors"
      return "#{player_1.name} Wins!"
    elsif player_1.action == "Scissors" && player_2.action == "Paper"
      return "#{player_1.name} Wins!"
    elsif player_1.action == "Paper" && player_2.action == "Rock"
      return "#{player_1.name} Wins!"
    elsif player_1.action == "Rock" && player_2.action == "Paper"
      return "#{player_2.name} Wins!"
    elsif player_1.action == "Paper" && player_2.action == "Scissors"
      return "#{player_2.name} Wins!"
    elsif player_1.action == "Scissors" && player_2.action == "Rock"
      return "#{player_2.name} Wins!"
    elsif player_1.action == "Paper" && player_2.action == "Paper"
      return "It's a DRAW!"
    elsif player_1.action == "Rock" && player_2.action == "Rock"
      return "It's a DRAW!"
    elsif player_1.action == "Scissors" && player_2.action == "Scissors" 
      return "It's a DRAW!"
    end
  end 
  
  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player}.first
  end
end
