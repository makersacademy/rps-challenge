class Game

  attr_reader :computer_choice, :winner

  RPS = {"Rock" => 1, "Paper" => 2, "Scissors" => 3}
  BEATS = {"Scissors" => 1, "Rock" => 2, "Paper" => 3}

  def initialize(player)
    calculate_player_details(player)
    generate_computer_choice
    calculate_winner(player.rps_choice, @computer_choice)
  end

  private

  def calculate_player_details(player)
    @player = player
    @players_choice = player.rps_choice
  end

  def generate_computer_choice
    @rps_array = RPS.keys
    @rps_array.delete(@players_choice)
    @computer_choice = @rps_array.sample
  end

  def calculate_winner(players_choice, computer_choice)
    player_num = RPS[@players_choice]
    computer_num = BEATS[@computer_choice]
    if player_num == computer_num
      @winner = 'Player'
    else
       @winner = 'Computer'
     end
    # case players_choice
    # when 'Rock'
    #   @winner = 'Player' if @computer_choice == 'Scissors'
    # when 'Paper'
    #   @winner = 'Player' if @computer_choice == 'Rock'
    # when 'Scissors'
    #   @winner = 'Player' if @computer_choice == 'Paper'
    # else
    #   @winner = 'Computer'
    # end
  end
end
