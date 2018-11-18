class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def result(player_1, player_2)
    if player_1 == 'rock' && player_2 == 'scissor' || player_1 == 'scissor' && player_2 == 'paper' || player_1 == 'paper' && player_2 == 'rock'
      :win
    elsif player_2 == 'rock' && player_1 == 'scissor' || player_2 == 'scissor' && player_1 == 'paper' || player_2 == 'paper'  && player_1 == 'rock'
      :loss
    else
      :draw
    end
  end

end
