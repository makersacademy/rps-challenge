
class RPSGame

 attr_accessor :winner


  def initialize
    @computer_choice = computer
    # @player_1
    @winning_combo = [[:rock, :scissors], [:paper, :rock], [:scissors, :paper]]
  end

  # def check_winner choice1, choice2
  #   draw if choice1 == choice2
  #   player_1_wins if @winning_combo.include?([choice1, choice2])
  # end

  def play choice1
    # choice2 = computer_choice
    check_winner choice1
  end

  #
  # def play player1_choice
  #   case
  #     when player1_choice == "rock" && self.computer == "paper"
  #       "you loose"
  #     when player1_choice == "rock" && self.computer == "scissors"
  #       "you win"
  #     when player1_choice == "paper" && self.computer == "rock"
  #       "you win"
  #     when  player1_choice == "paper" && self.computer == "scissors"
  #       "you loose"
  #     when player1_choice == "scissors"  && self.computer == "rock"
  #       "you loose"
  #     when player1_choice == "scissors" && self.computer == "paper"
  #       "you win"
  #     else player1_choice == self.computer && self.computer == player1_choice
  #       "you tie"
  #     end
  # end
  def check_winner choice1
    choice2 = computer
    # draw  choice1 == choice2
    player_wins if @winning_combo.include?([choice1, choice2])

  end

  def computer
    ["rock", "paper", "scissors"].sample
  end

  def player_wins
    @winner = player_1
  end
  # def computer_choice
  #   computer
  # end

  private



  def choice2
    computer
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
