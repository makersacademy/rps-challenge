class Game

  attr_reader :player_1, :player_2, :winner

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def play
    if player_1.choice == 'scissors' && player_2.choice == 'paper'
      @winner = @player_1.name
    else
      if player_2.choice == 'scissors' && player_1.choice == 'paper'
      @winner = @player_2.name
    else
      if player_1.choice == 'paper' && player_2.choice == 'rock'
      @winner = @player_1.name
    else
      if player_2.choice == 'paper' && player_1.choice == 'rock'
      @winner = @player_2.name
    else
      if player_1.choice == 'rock' && player_2.choice == 'scissors'
      @winner = @player_1.name
    else
      if player_2.choice == 'rock' && player_1.choice == 'scissors'
      @winner = @player_2.name
    else
      if player_1.choice == player_2.choice
      @winner = 'draw'
                end
              end
            end
          end
        end
      end
    end
  end
  private



end
