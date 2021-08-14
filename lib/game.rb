class Game

  def initialize(player_choice, computer_choice, player_name)
    @player_choice = player_choice
    @computer_choice = computer_choice
    @player_name = player_name
  end

  # Spock smashes scissors and vaporizes rock; he is poisoned by lizard and disproved by paper.
  # Lizard poisons Spock and eats paper; it is crushed by rock and decapitated by scissors.
  def rpssl
    return "#{@player_name} won!" if @player_choice == 'scissors' && @computer_choice == 'paper'
    return "#{@player_name} won!" if @player_choice == 'paper' && @computer_choice == 'rock'
    return "#{@player_name} won!" if @player_choice  == 'rock' && @computer_choice == 'scissors'
    return "#{@player_name} won!" if @player_choice == 'spock' && @computer_choice == 'scissors'
    return "#{@player_name} won!" if @player_choice == 'spock' && @computer_choice == 'rock'
    return "#{@player_name} won!" if @player_choice == 'lizard' && @computer_choice == 'spock'
    return "#{@player_name} won!" if @player_choice == 'lizard' && @computer_choice == 'paper'
    return 'Draw!' if @player_choice == @computer_choice
    'Computer won!'
  end
end
