class Game

  attr_reader :player_1, :player_2, :player_1_choice, :player_2_choice, :winner

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_choice
    @player_2_choice
  end

  def player_1_choice
    @player_1.choice
  end

  def player_2_choice
    @player_2.choice
  end

  def play
    if player_1_choice == 'scissors' && player_2_choice == 'paper'
      @winner = @player_1.name
    else
      if player_2_choice == 'scissors' && player_1_choice == 'paper'
      @winner = @player_2.name
    else
      if player_1_choice == 'paper' && player_2_choice == 'rock'
      @winner = @player_1.name
    else
      if player_2_choice == 'paper' && player_1_choice == 'rock'
      @winner = @player_2.name
    else
      if player_1_choice == 'rock' && player_2_choice == 'scissors'
      @winner = @player_1.name
    else
      if player_2_choice == 'rock' && player_1_choice == 'scissors'
      @winner = @player_2.name
    else
      @winner = 'draw'
    end
          end
        end
      end
    end
  end
end


end
