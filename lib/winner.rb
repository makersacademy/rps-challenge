require_relative 'computer'
require_relative 'player'

class Winner

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    if @player_1.choice == @player_2.choice
      "It's a draw!"
    elsif @player_1.choice == "Rock"
      if @player_2.choice == "Scissors"
        "#{@player_1.name} wins!"
      else "#{@player_2.name} wins!"
      end
    elsif @player_1.choice == "Scissors"
      if @player_2.choice == "Paper"
        "#{@player_1.name} wins!"
      else "#{@player_2.name} wins!"
      end
    elsif @player_1.choice == "Paper"
      if @player_2.choice == "Rock"
        "#{@player_1.name} wins!"
      else "#{@player_2.name} wins!"
      end
    end
  end

# //rock=0, paper=1, scissors=2
# if (a == b) ties++;
# else if ((a - b) % 3 == 1) wins++;
# else losses++;

end
