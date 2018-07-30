class Game

  GAME = {
     "Rock" => { "Scissors" => :win, "Paper" => :lose },
     "Paper" => { "Rock" => :win, "Scissors" => :lose },
     "Scissors" => { "Paper" => :win, "Rock" => :lose }
   }

  def initialize(player = 'player')
    @player = player
  end

  def player_choice
    player.choice
  end

  def bot_choice
    bot.choice
  end

  def result
    if player_choice == bot_choice
      return 'It is a draw!'
    elsif GAME[player_choice][bot_choice] == :win
      return 'You Win!'
    elsif GAME[player_choice][bot_choice] == :lose
      return 'You Lose!'
    end
  end

end
