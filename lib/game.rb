class Game

  def initialize(player_choice, computer_choice, player_name)
    @player_choice = player_choice
    @computer_choice = computer_choice
    @player_name = player_name
  end

  def rps
    return "#{@player_name} won!" if @player_choice == 'scissors' && @computer_choice == 'paper'
    return "#{@player_name} won!" if @player_choice == 'paper' && @computer_choice == 'rock'
    return "#{@player_name} won!" if @player_choice  == 'rock' && @computer_choice == 'scissors'
    return 'Draw!' if @player_choice == @computer_choice
    'Computer won!'
  end
end 
