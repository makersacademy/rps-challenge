class Player
  attr_reader :name, :player_wins 

  def initialize(name)
    @name = name
    @player_wins = true 
  end 

  def play(player_choice, computer_choice) 
    if player_choice == computer_choice 
      "It's a draw!" 
      elsif player_choice == "Rock" && computer_choice == "Paper"
      @player_wins = false  
    
      elsif player_choice == "Paper" && computer_choice == "Scissors"
      @player_wins = false
     
      elsif player_choice == "Scissors" && $omputer_choice == "Rock"
      @player_wins = false
      end
    end 
end 