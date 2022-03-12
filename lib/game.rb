class Game
  
  attr_reader :player, :win, :message

  def initialize(player)
    @player = player
    @win = nil
    @message = ""
  end 

  def rock
    case npc_play
    when "rock"
      @win = nil
    when "paper"
      @win = false
    when "scissors"
      @win = true
    end
  end 

  def paper
    case npc_play
    when "rock"
      @win = true
    when "paper"
      @win = nil
    when "scissors"
      @win = false
    end
  end 

  def scissors
    case npc_play
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
        @message = "You've won!"
      when false 
        @message = "You've lost!"
      when nil
        @message = "It's a tie!"
    end
  end

  private

  def npc_play
    ["rock", "paper", "scissors"].sample
  end

end
