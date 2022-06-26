class Game
  
  attr_reader :player, :win

  def initialize(player)
    @player = player
    @win = nil
    @message = ""
  end 

  def rock
    case rpc_play
      when "rock"
        @win = nil
      when "paper"
        @win = false
      when "scissors"
        @win = true
    end
  end 

  def paper
    case rpc_play
      when "rock"
        @win = true
      when "paper"
        @win = nil
      when "scissors"
        @win = false
    end
  end 

  def scissors
    case rpc_play
      when "rock"
        @win = false
      when "paper"
        @win = true
      when "scissors"
        @win = nil
    end
  end

  def message
    case @win 
      when true
        @message = "You've won! Well done!"
      when false 
        @message = "You've lost! Try again!"
      when nil
        @message = "It's a tie! Try again!"
    end
  end

  private

  def rpc_play
    ["rock", "paper", "scissors"].sample
  end

end
