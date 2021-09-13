class Throw
  attr_reader :user_move
  attr_accessor :comp_move

  def initialize(user_move)
    @user_move = user_move
  end

  def computer_move
    @comp_move = ["rock", "paper", "scissors"].sample
  end

  def who_wins
    winner_hash = {
      :rock => { :rock => "tie", :paper => "lose", :scissor => "win" },
      :paper => { :rock => "win", :paper => "tie", :scissors => "lose" },
      :scissors => { :rock => "lose", :paper => "win", :scissors => "tie" },
    }
    return winner_hash[@user_move.to_sym][@comp_move.to_sym]
  end
end
