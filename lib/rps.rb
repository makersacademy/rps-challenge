class RPS
  attr_reader :computer_choice, :result
  
  def initialize(player_1_choice:, random_seed: nil)
    @player_1_choice = player_1_choice
    @random_seed = random_seed
    @computer_choice = computer_random_choice
    @result = winner

  end

  private

  def winner
    
    if RULES[@computer_choice] == @player_1_choice
      :computer
    elsif RULES[@player_1_choice] ==  @computer_choice
      :player
    else
      :tie
    end
  end

  def computer_random_choice
    srand(@random_seed) unless @random_seed.nil? 
    ["ROCK", "PAPER", "SCISSORS"].sample
  end

  RULES = {
    "ROCK" => "SCISSORS",
    "PAPER" => "ROCK",
    "SCISSORS" => "PAPER"
  }

end 
