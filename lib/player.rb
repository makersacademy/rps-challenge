class Player

  attr_reader :name, :move, :computer_score, :your_score

  def initialize(name="Mystery Person")
    @name = name
    @move
    @computer_score = 0
    @your_score = 0

  end

  def rock
    @move = "ROCK"
  end
    
  def paper
    @move = "PAPER"
  end

  def scissors
    @move = "SCISSORS"
  end

  def play
   outcome(@move)
  end

      private 

  def computer
    ["ROCK", "PAPER", "SCISSORS"].sample
  end

  def outcome(choice)
    case choice
    when"ROCK"
      if computer == "SCISSORS"
        @your_score += 1
        "ROCK beats SCISSORS. #{@name} wins!"
      elsif computer == "PAPER"
        @computer_score += 1
        "SCISSORS beats ROCK. #{@name} loses!"
      else
        "DRAW"
      end
    when "PAPER"
      if computer == "SCISSORS"
        @computer_score += 1
        "SCISSORS beats PAPER.  #{@name} loses!"
      elsif computer == "ROCK"
        @your_score += 1
        "PAPER beats ROCK. #{@name} wins!"
      else
        "DRAW"
      end
    when "SCISSORS"
      if  computer == "ROCK"
        @computer_score += 1
        "ROCK beats SCISSORS. #{@name} loses!"
      elsif  computer == "PAPER"
        @your_score += 1
        "SCISSORS beats PAPER. #{@name} wins!"
      else
        "DRAW"
      end
    end
  end
end
