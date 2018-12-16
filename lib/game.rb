class Game

  attr_accessor :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(@player_1, @player_2)
  end

  def self.instance
    @game
  end

  def result
    if @player_1.options == @player_2.options
      "Draw!"
    elsif
      @player_1.options == "scissors" && @player_2.options == "paper" ||
      @player_1.options == "rock" && @player_2.options == "scissors" ||
      @player_1.options == "paper" && @player_2.options == "rock"
      "#{@player_1.name} wins!"
    else
      "#{@player_2.name} wins!"
    end
  end
end
