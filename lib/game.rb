require_relative 'virtual_player'
require_relative 'player'
class Game

  attr_reader :player1, :player2

  def initialize(player1= Player.new ,player2= VirtualPlayer.new)
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1,player2)
    @game = new(player1,player2)
  end

  def self.game
    @game
  end


  def evaluation
    option1 = player1.option
    option2 = player2.option

    return rock_evaluation(option2) if option1 == :Rock

    return paper_evaluation(option2) if option1 == :Paper

    return scissor_evaluation(option2) if option1 == :Scissor

    return spock_evaluation(option2) if option1 == :Spock

    return lizard_evaluation(option2) if option1 == :Lizard
  end

  private

  def rock_evaluation(option)
   result = :win if option == :Scissor || option == :Lizard
   result = :lose if option == :Paper || option == :Spock
   result = :tie if option == :Rock
   result
  end

  def paper_evaluation(option)
    result = :win if option == :Rock || option == :Spock
    result = :lose if option == :Scissor || option == :Lizard
    result = :tie if option == :Paper
    result
  end

  def scissor_evaluation(option)
    result = :win if option == :Paper || option == :Lizard
    result = :lose if option == :Rock || option == :Spock
    result = :tie if option == :Scissor
    result
  end

  def spock_evaluation(option)
    result = :win if option == :Scissor || option == :Rock
    result = :lose if option == :Paper || option == :Lizard
    result = :tie if option == :Spock
    result
  end

  def lizard_evaluation(option)
    result = :win if option == :Paper || option == :Spock
    result = :lose if option == :Rock || option == :Scissor
    result = :tie if option == :Lizard
    result
  end



end