require_relative 'computer'

class Game

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  attr_reader :player1, :winner

  def initialize(player1)
    @player1=player1
    @computer=Computer.new
    @winner = nil
  end

  def gaming
    if @player1.hand=="Rock" && @computer.hand == "Scissors"
      @winner = @player1
    elsif @player1.hand=="Paper" && @computer.hand == "Rock"
      @winner = @player1
    elsif @player1.hand=="Scissors" && @computer.hand == "Paper"
      @winner = @player1

    elsif @player1.hand=="Rock" && @computer.hand == "Paper"
      @winner = @computer
    elsif @player1.hand=="Paper" && @computer.hand == "Scissors"
      @winner = @computer
    elsif @player1.hand=="Scissors" && @computer.hand == "Rock"
      @winner = @computer

    elsif @player1.hand=="Paper" && @computer.hand == "Paper"
      @winner
    elsif @player1.hand=="Rock" && @computer.hand == "Rock"
      @winner
    elsif @player1.hand=="Scissors" && @computer.hand == "Scissors"
      @winner

    end
  end

# private
#   def computers_hand
#     ['Rock', 'Paper','Scissors'].sample
#   end

end
