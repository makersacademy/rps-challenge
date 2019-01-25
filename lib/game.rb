
class Game
  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  attr_reader :player1

  def initialize(player1)
    @player1=player1
  end

  def gaming
    if @player1.hand=="Rock" && computers_hand == "Rock"
      p "Play again, no one wins (rock,rock)"
    elsif @player1.hand=="Rock" && computers_hand == "Scissors"
      p "Player wins (rock against scissors)"
    elsif @player1.hand=="Rock" && computers_hand == "Paper"
      p "Player loses (rock against paper)"
    elsif @player1.hand=="Paper" && computers_hand == "Rock"
      p "Player wins (paper against rock)"
    elsif @player1.hand=="Paper" && computers_hand == "Scissors"
      p "Player loses (paper against scissors)"
    elsif @player1.hand=="Paper" && computers_hand == "Paper"
      p "Play again, no one wins (paper,paper)"
    elsif @player1.hand=="Scissors" && computers_hand == "Rock"
      p "Player loses (scissors against rock)"
    elsif @player1.hand=="Scissors" && computers_hand == "Paper"
      p "Player wins (scissors against paper)"
    elsif @player1.hand=="Scissors" && computers_hand == "Scissors"
      p "Play again, no one wins (scissors,scissors)"
    end
  end


private
  def computers_hand
    ['Rock', 'Paper','Scissors'].sample
  end

end
