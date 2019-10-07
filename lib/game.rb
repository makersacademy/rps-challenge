require_relative 'computer'

class Game

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  attr_reader :player1, :winner, :computer

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

    elsif @player1.hand==@computer.hand
      @winner
    end
  end

  # results = {
  #   rock:     {rock: :draw,  paper: :lose, scissors: :win},
  #   paper:    {rock: :win,   paper: :draw, scissors: :loose},
  #   scissors: {rock: :loose, paper: :win,  scissors: :draw}
  # }
  #
  # results[player1_weapon][player2_weapon]
  # results[player1.hand][computer.hand]

end
