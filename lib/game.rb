class Game

  attr_reader :computer_choice

  def initialize
    @computer_choice = generate_computer_choice
  end
    
  def outcome(player_choice)
  
    if player_choice == @computer_choice
      'Draw'
    elsif player_choice == 'Rock' && @computer_choice == 'Paper'
      'Lose'
    elsif player_choice == 'Paper' && @computer_choice == 'Scissors'
      'Lose'
    elsif player_choice == 'Scissors' && @computer_choice == 'Rock'
      'Lose'
    else
      'Win'
    end
  end
    
  def generate_computer_choice
    @computer_choice = ['Rock', 'Paper', 'Scissors'].sample
  end
  
end
  
  
  
  
  
  
  
  
  
  
  
  
  
=begin 
  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  attr_reader :computer_choice
  
  def initialize
    @computer_choice
  end

  def outcome(player_choice, computer_choice)
    return :Draw if draw(player_choice, computer_choice)
    return :Win if wins(player_choice, computer_choice)
    return :Lose if !wins(player_choice, computer_choice)
  end

  def draw(player_choice, computer_choice)
    player_choice == computer_choice
  end

  def wins(player_choice, computer_choice)
    RULES[player_choice] == computer_choice
  end
end
=end
