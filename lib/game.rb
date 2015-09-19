class Game

def initialize
  @paper = :paper
  @rock = :rock
  @scissors = :scissors
end

  def computer_play
    [:rock, :paper, :scissors][rand(0..2)]
  end

  def play(player_choice)
    comp = self.computer_play
      if comp == player_choice
        "You and your opponent both chose #{player_choice}!"
      elsif player_win?(player_choice)
        "You Win!"
      else
        "YOU LOSE"
      end
  end

  def player_win?(choice)
    comp = self.computer_play
    true if choice == :rock && comp == :scissors || choice == :paper && comp == :rock || choice == :scissors && comp == :paper
  end
end
