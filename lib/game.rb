class Game

  attr_reader :computer_choice, :winner

  def initialize(players_choice)
    @rps_array = ['Rock', 'Paper', 'Scissors']
    @rps_array.delete(players_choice)
    @computer_choice = @rps_array.sample
    calculate_winner(players_choice, computer_choice)
  end

  private
  def calculate_winner(players_choice, computer_choice) 
    @winner = 'Player'
  end
end
