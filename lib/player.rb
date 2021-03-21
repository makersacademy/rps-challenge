class Player
  attr_reader :name

  def initialize(name)
    @name = name
    
  end 

  def play(player_choice, computer_choice) 
    if player_choice == computer_choice 
      "It's a draw!" 
      elsif player_choice == "Rock" && computer_choice == "Paper"
        "#{@name} lost!" 
      elsif player_choice == "Rock" && computer_choice == "Scissors"
        "#{@name} wins!"
      elsif player_choice == "Paper" && computer_choice == "Rock" 
        "#{@name} wins!"
      elsif player_choice == "Paper" && computer_choice == "Scissors"
        "#{@name} lost!"
      elsif player_choice == "Scissors" && computer_choice == "Paper"
        "#{@name} wins!" 
      elsif player_choice == "Scissors" && $omputer_choice == "Rock"
        "#{@name} lost!"
    end
  end 
end 
