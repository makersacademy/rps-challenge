class Game
  def initialize(player_1 , player_2)
    @player_1 = player_1
    @player_2 = player_2
    @game_hash = {player_1.movement=>player_1.name,player_2.movement=> player_2.name}
    @game_movements = [player_1.movement,player_2.movement]
  end

  def winner_term
    return "The game is equal" if @game_movements.uniq.size == 1
    return "#{@game_hash[the_winner_movement]} won the game"
  end

  private
  def the_winner_movement
    if @game_movements.sort == ["paper","rock"]
      return "paper"
    elsif @game_movements.sort == ["paper","scissors"]
      return "scissors"
    elsif @game_movements.sort == ["rock","scissors"]
      return "rock"
    end
  end
end
