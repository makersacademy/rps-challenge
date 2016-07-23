class Game

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def initialize(player_1)
    @players = [player_1]
    beats = {
              rock: {scissors: "crushes"},
              paper: {rock: "covers"},
              scissors: {paper: "cuts"}
            }
  end

  def player_1
    @players.first
  end

  private

  def computer_move
    @computer_move = ['rock', 'paper', 'scissors'].sample
  end



end
