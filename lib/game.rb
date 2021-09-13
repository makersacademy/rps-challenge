class Game 

attr_reader :player_choice, :computer_choice, :marketer_name_1

WEAPONS = {rock: :scissors, scissors: :paper, paper: :rock}

    def initialize
      @player_choice = []
      @computer_choice = []
    #   @marketer_name_1 = marketer_name_1
    end 

  def select_player_choice(choice)
    @player_choice = choice
  end

  def select_computer_choice
    @computer_choice = WEAPONS.keys[random_number]
  end

  def who_wins 
    {draw: 'It\'s a draw', 
    player_win: marketer_name_1,
    game_win: 'Computer'}[win_logic]
  end 

  def random_number
    rand(3)
  end

  private

  def win_logic
    fail 'Please select weapons' if player_choice.nil? || computer_choice.nil?
    return :draw if player_choice == computer_choice
    WEAPONS[player_choice] == computer_choice ? :player_win : :computer_win
  end
end 
