class Game

  def initialize(name, computer = Computer.new)
    @name = name
    @computer = computer
  end

  def rock
    case @computer.turn
    when "rock"
      "#{@name} and computer both chose rock. It's a draw!"
    when "paper"
      "#{@name} chose rock and computer chose paper. Computer wins!"
    when "scissors"
      "#{@name} chose rock and computer chose scissors. #{@name} wins!"
    end
  end

  def paper
    case @computer.turn
    when "rock"
      "#{@name} chose paper and computer chose rock. #{@name} wins!"
    when "paper"
      "#{@name} and computer both chose paper. It's a draw!"
    when "scissors"
      "#{@name} chose paper and computer chose scissors. Computer wins!"
    end
  end

  def scissors
    case @computer.turn
    when "rock"
      "#{@name} chose scissors and computer chose rock. Computer wins!"
    when "paper"
      "#{@name} chose scissors and computer chose paper. #{@name} wins!"
    when "scissors"
      "#{@name} and computer both chose scissors. It's a draw!"
    end
  end
end

class Computer
  def turn
    ["rock", "paper", "scissors"].sample
  end
end
