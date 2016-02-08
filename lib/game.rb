require_relative 'computer_player'
class Game

  def initialize(computer_player = ComputerPlayer.new)
    @response_options = response_options = ['rock', 'paper', 'scissors']
    @players_points = 0
    @computer_points = 0
    @computer_player=computer_player
    @second_player_response = computer_player.random_response

  end



  def play (player_response, player_two = @second_player_response)
    player_response.to_str

    player_two.to_str

    if player_response == 'rock' && player_two  == 'paper'
      player2_gets_point
    elsif player_response == 'rock' && player_two  == 'scissors'
      player1_gets_point
    elsif player_response == 'paper' && player_two  == 'rock'
      player1_gets_point
    elsif player_response == 'paper' && player_two == 'scissors'
      player2_gets_point
    elsif player_response == 'scissors' && player_two == 'paper'
      player1_gets_point
    elsif player_response == 'scissors' && player_two == 'rock'
      player2_gets_point
    else
      'draw'
    end
  end


private

  def player1_gets_point
    'You win!'
  end

  def player2_gets_point
    'I win! Mwahahaha'
  end
end
