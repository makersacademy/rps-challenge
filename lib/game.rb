class Game
  
  PAPER = 'paper'
  SCISSORS = 'scissors'
  ROCK = 'rock'
  
  def initialize(player, random_weapon)
    @player = player
    @random_weapon = random_weapon
  end

  def result
    game_choice = @random_weapon.weapon
    player_choice = @player.choice

    calculate_result(player_choice, game_choice)
  end

  private

  def calculate_result(player_choice, game_choice)
    if player_choice == game_choice
      'draw'
    elsif player_choice == ROCK && game_choice == SCISSORS
      'win'
    elsif player_choice == ROCK && game_choice == PAPER
      'lose'
    elsif player_choice == PAPER && game_choice == ROCK
      'win'
    elsif player_choice == PAPER && game_choice == SCISSORS
      'lose'
    elsif player_choice == SCISSORS && game_choice == PAPER
      'win'
    elsif player_choice == SCISSORS && game_choice == ROCK
      'lose'
    end
  end

end
