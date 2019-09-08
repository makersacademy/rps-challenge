class Game
  attr_reader :message, :wins, :losses

  def initialize
    @message = ""
  end

  def compete(player_choice)
     choice = player_choice.to_sym
     @message = outcome(choice, computer_response)
  end

  private

  def computer_response
    [:rock, :paper, :scissors].sample
  end

  def outcome(p1, p2)
    if p1 == :rock && p2== :scissors
      Player.win
      "You beat scissors with rock!"
    elsif p1 == :paper && p2 == :rock
      Player.win
      "You beat rock with paper! (Yeah, we don't get how that works either...)"
    elsif p1 == :scissors && p2 == :paper
      Player.win
      "You beat paper with scissors!"
    elsif p1 == :scissors && p2 == :rock
      Player.lose
      "Scissors was defeated by rock"
    elsif p1 == :rock && p2 == :paper
      Player.lose
      "Rock was defeated by paper"
    elsif p1 == :paper && p2 == :scissors
      Player.lose
      "Paper was defeated by scissors"
    else "It's a draw"
    end
  end
end
