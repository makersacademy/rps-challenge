class Game 

attr_reader :player_choice, :computer_choice

WEAPONS = {rock: :scissors, scissors: :paper, paper: :rock}

    def initialize
      @player_choice = nil
      @computer_choice = nil
    end 

  def select_player_choice(choice)
    @player_choice = choice
  end

  def select_computer_choice
    @computer_choice = WEAPONS.keys[random_number]
  end

  private

  def random_number
    rand(3)
  end

end 
