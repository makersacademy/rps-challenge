class Game
  attr_accessor :player1, :player2
  Resolve = {
    rock: { scissors: :win, paper: :lose, rock: :draw },
    paper: { scissors: :lose, paper: :draw, rock: :win },
    scissors: { scissors: :draw, paper: :win, rock: :lose }
  }

  def play
    "#{player1.name} chose #{player1.choice},\n#{player2.name} chose #{player2.choice},\n#{resolve(player1, player2)} Wins!"
  end

  private

  def computer_turn
    @com_turn [:rock, :paper, :scissors].sample
  end

  def resolve(player1, player2)
    case Resolve[player1.choice][player2.choice]
    when :win then player1.name
    when :lose then player2.name
    when :draw then "Nobody"
    end

    # case player1.choice
    # when :rock
    #   if player2.choice == :scissors
    #     return player1
    #   elsif player2.choice == :paper
    #     return player2
    #   else
    #     return :draw
    #   end
    # when :paper
    #   if player2.choice == :rock
    #     return player1
    #   elsif player2.choice == :scissors
    #     return player2
    #   else
    #     return :draw
    #   end
    # when :scissors
    #   if player2.choice == :paper
    #     return player1
    #   elsif player2.choice == :rock
    #     return player2
    #   else
    #     return :draw
    #   end
    # end
  end

end
