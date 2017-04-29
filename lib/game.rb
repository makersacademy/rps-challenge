class Game
  attr_reader :player_1, :choice, :old_name

  CHOICES = [:Rock, :Paper, :Scissors]

  def initialize(player1)
    @player_1 = player1
  end

  def self.start(player)
    @game = Game.new(player)
  end

  def self.current
    @game
  end

  def generate_response
    @comp_choice = CHOICES.sample
  end

  def declare_winner
    return "#{comp_message}. It's a draw!" if equal?
    return "#{comp_message}. You win!" if player_wins?
    "#{comp_message}. You lose!"
  end
  
  private

  def comp_message
    "Computer chose #{@comp_choice}"
  end

  def equal?
    @player_1.choice == @comp_choice
  end

  def player_wins?
    @player_1.choice == :Rock && @comp_choice == :Scissors ||
    @player_1.choice == :Scissors && @comp_choice == :Paper ||
    @player_1.choice == :Paper && @comp_choice == :Rock
  end
end
