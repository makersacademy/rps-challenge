class Game 

attr_reader :player_choice, :computer_choice

WEAPONS = {
  rock: :scissors, 
  scissors: :paper, 
  paper: :rock
}

    def initialize
      @player_choice = []
      @computer_choice = select_computer_choice
    end 
  
    # def select_player_choice(choice)
    #   @player_choice = choice
    # end

  def select_computer_choice
    @computer_choice = WEAPONS.keys[random_number]
  end

  def random_number
    rand(3)
  end

  # private

  def win_logic
    if player_choice.nil? || computer_choice.nil?
      return 'Please select weapons'
    #player wins
    elsif player_choice == "Rock" && computer_choice == "Scissors" || player_choice == "Paper" && computer_choice == "Rock" || player_choice == "Scissors" && computer_choice == "Paper"
      return "Player wins"
    elsif computer_choice == "Rock" && player_choice == "scissors" || computer_choice == "Paper" && player_choice == "Rock" || computer_choice == "Scissors" && player_choice == "Paper"
      return "Computer wins"
    else player_choice == computer_choice
      return "It's a draw"
    end 
    # fail 'Please select weapons' if player_choice.nil? || computer_choice.nil?
    # return :draw if player_choice == computer_choice
    # WEAPONS[player_choice] == computer_choice ? :player_win : :computer_win
  end
end 
