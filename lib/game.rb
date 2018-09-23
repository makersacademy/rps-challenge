require_relative 'player.rb'
class Game
  attr_reader :player1, :player2, :winner
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = nil
  end

  def retrieve_winner(first_player, second_player)
    case first_player.choice
    when "rock"
      @winner = first_player.name if second_player.choice == "scissors"
      @winner = first_player.name if second_player.choice == "lizard"
      @winner = second_player.name if second_player.choice == "paper"
      @winner = second_player.name if second_player.choice == "spock"
    when "paper"
      @winner = first_player.name if second_player.choice == "rock"
      @winner = first_player.name if second_player.choice == "spock"
      @winner = second_player.name if second_player.choice == "scissors"
      @winner = second_player.name if second_player.choice == "lizard"
    when "scissors"
      @winner = first_player.name if second_player.choice == "paper"
      @winner = first_player.name if second_player.choice == "lizard"
      @winner = second_player.name if second_player.choice == "rock" 
      @winner = second_player.name if second_player.choice == "spock"
    when "lizard"
      @winner = first_player.name if second_player.choice == "spock"
      @winner = first_player.name if second_player.choice == "paper"
      @winner = second_player.name if second_player.choice == "rock" 
      @winner = second_player.name if second_player.choice == "scissors"
    when "spock"
      @winner = first_player.name if second_player.choice == "scissors"
      @winner = first_player.name if second_player.choice == "rock"
      @winner = second_player.name if second_player.choice == "lizard" 
      @winner = second_player.name if second_player.choice == "paper"    
    end
  end

end