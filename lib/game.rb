class Game
  attr_accessor :players 
  
  def initialize
  @players = []
  @beats = { paper: :scisor, rock: :paper, scisor: :rock}
  @weapons = @beats.keys
  end

  def add_player(name)
    if @players.length < 2
       @players << name 
      else raise "Sorry, this game can only be played by two players at a time"
    end
  end

  def beater?(player1, player2)
    if player1.weapon == player2.weapon
      "Tie. Choose again"
    elsif player1.weapon == @beats[player2.weapon]
      player1
    else
      player2
    end
  end

  def random_weapon
    self.weapon = @weapons.sample
  end


end