class Game

  attr_reader :player1, :player2

  def initialize(player1:, player2:)
  	@player1 = player1
  	@player2 = player2
  end

  def self.create(player1, player2)
  	@game = Game.new(player1:player1, player2:player2)
  end

  def self.instance
  	@game
  end

  def result(p1, p2)
     p2 = get_random if p2 == nil
     rps(p1, p2)
  end

  private

   def random
     Kernel.rand(0..2)
   end

   def get_random
     random == 0 ? 'scissors' : random == 1 ? 'paper' : 'rock'
   end


  def rps(p1, p2)
    rps_hash = {'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors'}

    p2 = get_random if p2 == nil

    if p1 == p2
      "Draw!"
    elsif rps_hash[p1] == p2
      "Player 1 won! #{p1} beats #{p2}"
    else
      "Player 2 won! #{p2} beats #{p1}"
    end
  end

end
