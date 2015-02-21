class Game
  attr_accessor :players
  
  def initialize
  @players = []
  end

  def add_player(name)
    if @players.length < 2
       @players << name 
      else raise "Sorry, this game can only be played by two players at a time"
    end
  end

  def beater?(player1, player2)
    if player1.weapon == :scisor && player2.weapon ==:paper
      player1 
    elsif player1.weapon == :rock && player2.weapon == :paper
      player2 
    elsif player1.weapon == :scisor && player2.weapon == :rock
      player2 
    elsif player1.weapon == :paper && player2.weapon == :rock
      player1 
    elsif player1.weapon == :rock && player2.weapon == :scisor
      player1 
    elsif player1.weapon == :paper && player2.weapon == :scisor
      player2 
    else 
      raise "Tie. Choose again"
    end
  end



end