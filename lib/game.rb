class Game
  attr_reader :player_1, :player_2, :player_1_choice, :player_2_choice
  CHOICE = ["Yellow-throated sneaker", "Dominant blue-throat", "Ultradominant orange-throat"]

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2 = :comp)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def p1_selection(choice)
    @player_1_choice = choice
  end
  
  def p2_selection(choice = CHOICE.sample)
    @player_2_choice = choice
  end

  def calculate_winner
    if player_1_choice == player_2_choice
      :draw
    elsif (player_1_choice == CHOICE[2] && player_2_choice == CHOICE[1]) || (player_1_choice == CHOICE[1] && player_2_choice == CHOICE[0]) || (player_1_choice == CHOICE[0] && player_2_choice == CHOICE[2])
      :player_1_win
    else
      :player_2_win
    end
  end

  private

  attr_writer :player_1_choice, :player_2_choice
end
