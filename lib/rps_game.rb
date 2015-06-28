
class RPSGame

attr_accessor :player_1


  def initialize
    @player1_choice
  end

  def player_1 rockpaperscissors
    @player1_choice = rockpaperscissors
  end

  def computer_choice
    computer
  end


  def winner
    case
      when @player1_choice == "rock" && rock?
        "you tie"
      when @player1_choice == "rock" && paper?
        "you loose"
      when @player1_choice == "rock" && scissors?
        "you win"
      when @player1_choice == "paper" && rock?
        "you win"
      when @player1_choice == "paper" && paper?
        "you tie"
      when  @player1_choice == "paper" && scissors?
        "you loose"
      when @player1_choice == "scissors"  && rock?
        "you loose"
      when @player1_choice == "scissors" && paper?
        "you win"
      when  @player1_choice == "scissors" && scissors?
        "you tie"
      else
        "try again"
      end
  end

  private


  def computer
    ["rock", "paper", "scissors"].sample
  end

  def rock?
    computer == "rock"
  end

  def paper?
    computer == "paper"
  end

  def scissors?
    computer == "scissors"
  end



  #
  # def rock_choice
  #   case
  #   when @player
  #       "you tie"
  #     when paper?
  #       "you loose"
  #     when scissors?
  #       "you win"
  #     else
  #       "wrong input"
  #     end
  # end
  #
  # def paper_choice
  #   case @choice = "paper"
  #     when rock?
  #       "you loose"
  #     when paper?
  #       "you tie"
  #     when scissors?
  #       "you loose"
  #     else
  #       "wrong input"
  #     end
  # end
  #
  # def scissors_choice scissors
  #   case @choice = "scissors"
  #     when rock?
  #       "you loose"
  #     when paper?
  #       "you win"
  #     when scissors?
  #       "you tie"
  #     else
  #       "wrong input"
  #     end
  # end
end
