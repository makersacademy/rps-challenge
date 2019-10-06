require_relative 'computer'

class Winner

  attr_reader :player_1, :player_2

  def initialize(player_1 = Player.new, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    if @player_1.choice == @player_2.choice
      "It's a draw!"
    elsif @player_1.choice == "Rock"
      if @player_2.choice == "Scissors"
        'The winner is #{@player_1.name}'
      else 'The winner is #{@player_2.name}'
      end
    elsif @player_1.choice == "Scissors"
      if @player_2.choice == "Paper"
        'The winner is #{@player_1.name}'
      else 'The winner is #{@player_2.name}'
      end
    elsif @player_1.choice == "Paper"
      if @player_2.choice == "Rock"
        'The winner is #{@player_1.name}'
      else 'The winner is #{@player_2.name}'
      end
    end
  end

end
