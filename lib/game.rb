class Game
  attr_reader :player, :comp_choice
  attr_accessor :choice

  def initialize(player)
    @player = player
  end

  def comp_choose(kernel = Kernel)
    number = kernel.rand(2)
    @comp_choice = "Rock" if number == 0
    @comp_choice = "Paper" if number == 1
    @comp_choice = "Scissors" if number == 2
  end

  def outcome
    if @choice == "Rock"
      if @comp_choice == "Scissors"
        return "You win!"
      elsif @comp_choice == "Paper"
        return "You lose!"
      else
        return "It's a draw!"
      end
    elsif @choice == "Paper"
      if @comp_choice == "Scissors"
        return "You lose!"
      elsif @comp_choice == "Paper"
        return "It's a draw!"
      else
        return "You win!"
      end
    else
      if @comp_choice == "Scissors"
        return "It's a draw!"
      elsif @comp_choice == "Paper"
        return "You win!"
      else
        return "You lose!"
      end
    end
  end

end
