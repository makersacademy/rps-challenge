class Player

  attr_reader :name, :move, :computer_score, :your_score, :result

  def initialize(name = "Mystery Person")
    @name = name
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
    return unless @move != nil
    result = outcome(@move)
    score(result)
    result
  end

      private 

  def score(result)
    if result.include?("win")
      @your_score += 1
    elsif result.include?("lose")
      @computer_score += 1
    else
    end
  end

  def computer
    ["ROCK", "PAPER", "SCISSORS"].sample
  end

  def outcome(choice)
    case choice
    when "ROCK"
      if computer == "SCISSORS"
        "ROCK beats SCISSORS. #{@name} wins!"
      elsif computer == "PAPER"
        "SCISSORS beats ROCK. #{@name} loses!"
      else
        "DRAW"
      end
    when "PAPER"
      if computer == "SCISSORS"
        "SCISSORS beats PAPER.  #{@name} loses!"
      elsif computer == "ROCK"
        "PAPER beats ROCK. #{@name} wins!"
      else
        "DRAW"
      end
    when "SCISSORS"
      if computer == "ROCK"
        "ROCK beats SCISSORS. #{@name} loses!"
      elsif computer == "PAPER"
        "SCISSORS beats PAPER. #{@name} wins!"
      else
        "DRAW"
      end
    end
  end
end
