class Game
  attr_reader :player_choice, :bot_choice

  GAME = {
     "Rock" => { "Scissors" => :win, "Paper" => :lose },
     "Paper" => { "Rock" => :win, "Scissors" => :lose },
     "Scissors" => { "Paper" => :win, "Rock" => :lose }
   }

  def initialize(player_choice, bot_choice)
    @player_choice = player_choice
    @bot_choice = bot_choice
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
