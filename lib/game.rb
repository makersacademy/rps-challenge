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
      "it's a draw!"
    elsif @opponent.throw == @defeats[@player.move]
      "you win!"
    else 
      "you lose!"
    end 
    
  end 

end 