class Game
  
  def initialize
    @players = []
    @key_beats_val_hash = {
      'rock' => 'paper',
      'paper' => 'rock',
      'scissors' => 'paper'
    }
    @winner = nil
  end

  def self.create_game
    @game = Game.new
  end

  def self.instance
    @game
  end

  def players
    @players
  end

  def winner
    @winner
  end

  def add_player(player)
    @players << player
  end

  def find_winner
    p1 = @players.first
    p2 = @players.last
    @winner = p1 if p2.choice == @key_beats_val_hash[p1.choice]
    @winner = p2 if p1.choice == @key_beats_val_hash[p2.choice] 

  end
  
end