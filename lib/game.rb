class Game 

  attr_reader :defeats, :player, :opponent

  def self.new_game(player, opponent)
    @game = Game.new(player, opponent)
  end 

  def self.instance 
    @game
  end 

  def initialize(player, opponent)
    @defeats = {'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper'}
    @player = player
    @opponent = opponent
  end 

  def winner?
    if @opponent.throw == @player.move 
      "Draw"
    elsif @opponent.throw == @defeats[@player.move]
      "Player wins"
    else 
      "Computer wins"
    end 
    
  end 

end 