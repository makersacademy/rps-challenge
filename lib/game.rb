class Game

  attr_reader :player, :user_choice, :game_choice, :round_number, :winner_count
  attr_writer :round_number

  def initialize(player)
    @player = player
    @round_number = 1
    @winner_count = {}
  end

  def player_choice(choice)
    @user_choice = choice
  end

  def update_round
    self.round_number += 1
  end

  def round_winner
    game_pick
    if draw?
      return 'draw'
    else
      return who_won
    end
  end

  private

  attr_writer :user_choice, :game_choice

  def game_pick
    @game_choice = ['rock', 'paper', 'scissors'].sample
  end

  def draw?
    game_choice == user_choice
  end

  def who_won
    if ((user_choice == 'rock' && game_choice == 'paper') ||
          (user_choice == 'scissors' && game_choice == 'rock') ||
          (user_choice == 'paper' && game_choice == 'scissors'))
      'robot'
    else
      self.player.name
    end
  end

end

# robot_win = ((user_choice == 'rock' && game_choice == 'paper') ||
#       (user_choice == 'scissors' && game_choice == 'rock') ||
#       (user_choice == 'paper' && game_choice == 'scissors'))

# robot_lose = ((user_choice == 'rock' && game_choice == 'scissors') ||
#       (user_choice == 'scissors' && game_choice == 'paper') ||
#       (user_choice == 'paper' && game_choice == 'rock'))
