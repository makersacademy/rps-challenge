require_relative 'virtual_player'
require_relative 'player'
  class Game


attr_reader :player1, :player2

  def initialize(player1= Player.new ,player2= VirtualPlayer.new)
    @player1 = player1
    @player2 = player2
  end


  def evaluation
    option1 = player1.option
    option2 = player2.option

    return rock_evaluation(option2) if option1 == "Rock"

    return paper_evaluation(option2) if option1 == "Paper"

    return scissor_evaluation(option2) if option1 == "Scissor"
  end

private

  def rock_evaluation(option)
   result = "wins" if option == "Scissor"
   result = "loses" if option == "Paper"
   result = "ties" if option == "Rock"
   result
  end

  def paper_evaluation(option)
    result = "wins" if option == "Rock"
    result = "loses" if option == "Scissor"
    result = "ties" if option == "Paper"
    result
  end

  def scissor_evaluation(option)
    result = "wins" if option == "Paper"
    result = "loses" if option == "Rock"
    result = "ties" if option == "Scissor"
    result
  end



end