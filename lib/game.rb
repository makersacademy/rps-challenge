class Game

  attr_reader :character
  attr_reader :opponent
  attr_reader :result

  def initialize(character)
    @character = character
    @opponent = "none"
    @result = nil
  end

  def self.create(character)
    @game = Game.new(character)
  end

  def self.instance
    @game
  end

  def play
    @opponent = enemy
    p @opponent
    battle
  end

  def enemy
    ["Rock", "Paper", "Scissors"].sample
  end

  def battle
    if @character == "Rock"
      rock_game
      p @opponent
    elsif @character == "Paper"
      paper_game
    else
      scissors_game
    end
  end

  def rock_game
    p @opponent
    if @opponent == "Scissors"
      @result =  "Rock blunts Scissors. You win!"
    elsif @opponent == "Paper"
      @result = "Paper covers Rock. You lose!"
    else
      draw
    end
  end

  def paper_game
    if @opponent == "Rock"
      @result =  "Paper covers Rock. You win!"
    elsif @opponent == "Scissors"
      @result = "Scissors cuts Paper. You lose!"
    else
      draw
    end
  end

  def scissors_game
    if @opponent == "Paper"
      @result =  "Scissors cuts Paper. You win!"
    elsif @opponent == "Rock"
      @result = "Rock blunts Scissors. You lose!"
    else
      draw
    end
  end

  def draw
    @result = "It's a draw"
  end

end
