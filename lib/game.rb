class Game
  attr_accessor :players 
  
  def initialize
  @players = []
  @beats = { paper: :scissor, rock: :paper, scissor: :rock}
  @weapons = @beats.keys
  end

  def add_player(name)
       @players << name 
  end

  def beater?(player2, player1)
    if player1.weapon == player2.weapon
      "Tie. Choose again"
    elsif player1.weapon == @beats[player2.weapon]
      player1
    else
      player2
    end
  end

end