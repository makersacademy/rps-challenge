require './lib/player.rb'
class Game
  DRAW = 0
  PLAYER_1_WINS = 1
  AI_WINS = 2
  def move
    @move
  end
  def move=(move)
    @move = move
    play_game
  end

  def play_game
    ai_move
    who_wins?
  end

  def ai_move
    @ai_move = %w[rock paper scissors].sample
  end

  def who_wins?
    return DRAW if a_draw?
    calculate_choices
    winner_integer
  end

  def a_draw?
   true if @move == @ai_move
  end

  def calculate_choices
    choices = %w(rock paper scissors).reverse
    index = choices.index(@move)
    @winning_choice = choices[index - 1] 
  end

  def winner_integer
    if @ai_move == @winning_choice
      AI_WINS
    else
      PLAYER_1_WINS
    end
  end

  def add_player(player)
    @player = player
  end

  def playername
    @player.username
  end

end
