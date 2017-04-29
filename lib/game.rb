class Game
  attr_reader :player, :choice

  CHOICES = [:Rock, :Paper, :Scissors]

  def initialize(player, weapon)
    @player = player
    @choice = weapon.to_sym
  end

  def self.start(player, weapon)
    @game = Game.new(player, weapon)
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
    @choice == @comp_choice
  end

  def player_wins?
    @choice == :Rock && @comp_choice == :Scissors ||
    @choice == :Scissors && @comp_choice == :Paper ||
    @choice == :Paper && @comp_choice == :Rock
  end
end
