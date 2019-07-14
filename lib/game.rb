
class Game
  attr_reader :player_input, :guess
  attr_writer :rand_seed

  def initialize(player_input)
    @player_input = player_input.downcase
  end


  def random_num
    rand(123456)
  end

  def computer_choice
    @rand_seed.nil? ? srand(random_num) : srand(@rand_seed)
    choice = %w(rock paper scissors)
    @guess = choice.sample
  end


  def result

    @moves = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }

    if valid_entry?
      return "sorry, invalid move given"
  elsif computer_wins?
      return "Computer wins"
    elsif you_win?
      return "You win"
    else
      return "Its a tie"
    end
  end


private

  def valid_entry?
    @player_input != "rock" && @player_input != "scissors" && @player_input != "paper"

  end

  def computer_wins?
    @moves[@guess] == @player_input
  end

  def you_win?
    @moves[@player_input] == @guess
  end

end
