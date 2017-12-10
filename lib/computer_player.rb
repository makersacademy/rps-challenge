class ComputerPlayer

  attr_reader :c_hands

  def initialize
   @c_hands = ["rock", "paper", "scissors"]
  end

  def select_hand
    @c_hands.sample
  end


end
