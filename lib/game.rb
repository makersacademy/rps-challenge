class Game

  attr_reader :player1
  attr_accessor :p1choice, :aichoice

  def initialize(player1)
    @player1 = player1
    @weapons = ["rock", "paper", "scissors"]
    @p1choice = []
    @aichoice = []
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def ai_choice
    @aichoice << @weapons.sample
  end

  def p1choice(weapon)
    @p1choice << weapon
  end

  def outcome
    if @p1choice == ["rock"] && @aichoice == ["rock"]
      then "It's a draw!"
    elsif @p1choice == ["paper"] && @aichoice == ["paper"]
      then "It's a draw!"
    elsif @p1choice == ["scissors"] && @aichoice == ["scissors"]
      then "It's a draw!"
    elsif @aichoice == ["rock"] && @p1choice == ["paper"]
      then "You win"
    elsif @aichoice == ["rock"] && @p1choice == ["scissors"]
      then "You lose"
    elsif @aichoice == ["paper"] && @p1choice == ["rock"]
      then "You lose"
    elsif @aichoice == ["paper"] && @p1choice == ["scissors"]
      then "You win"
    elsif @aichoice == ["scissors"] && @p1choice == ["paper"]
      then "You lose"
    elsif @aichoice == ["scissors"] && @p1choice == ["rock"]
      then "You win"
    end
  end

  def reset
    @aichoice = []
    @p1choice = []
  end

end
