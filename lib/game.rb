require_relative 'player'

class Game

  def self.start(player)
    @game = Game.new(player)
  end

  def self.this_game
    @game
  end


  attr_reader :comp, :player

  def initialize(player)
    @player = player
    @comp = comp_choice
    @result = nil
    @p1 = player.name
  end


  def comp_choice
    roll = rand(3)
    roll == 0 ? @comp = "rock" : roll == 1 ? @comp = "paper" : @comp = "scissors"
  end

  def comp_set(argument)
    @comp = argument
  end

  def play
    if @player.choice == @comp then @result = "Draw"
    elsif @player.choice == "rock"
      @comp == "scissors" ? @result = "#{@p1} wins" : @result = "Computer wins"
    elsif @player.choice == "scissors"
      @comp == "paper" ? @result = "#{@p1} wins" : @result = "Computer wins"
    else
      @comp == "rock" ? @result = "#{@p1} wins" : @result = "Computer wins"
    end
  end

end
