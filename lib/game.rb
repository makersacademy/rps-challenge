class Game
  attr_reader :rps, :rps_computer, :result
  def initialize
    @rps = ["rock", "paper", "scissors"]
    @rps_computer = []
    @result = nil
  end

  def compare(player_1_selection)
      @rps_computer << @rps.sample

      if @rps_computer.first == "rock" && player_1_selection == "scissors"
        @result = :lost
      elsif @rps_computer.first == "rock" && player_1_selection == "paper"
        @result = :win
      elsif @rps_computer.first == "paper" && player_1_selection == "rock"
        @result = :lost
      elsif @rps_computer.first == "paper" && player_1_selection == "scissors"
        @result = :win
      elsif @rps_computer.first == "scissors" && player_1_selection == "paper"
        @result = :lost
      elsif @rps_computer.first == "scissors" && player_1_selection == "rock"
        @result = :win
      elsif @rps_computer.first == player_1_selection
        @result = :draw
      else
        @result = :error
    end
  end

  # def compare(player_1_option)
  #     @rps << @rps1.sample
  #     if @rps.first == "rock" && player_1_option == "scissors"
  #       @result = "C: #{rps.first.inspect} / U: #{player_1_option} - Sorry, You lose! Go on, try again"
  #     elsif @rps.first == "rock" && player_1_option == "paper"
  #       @result = "C: #{rps.first.inspect} / U: #{player_1_option} - Awesome, You won!"
  #     elsif @rps.first == "paper" && player_1_option == "rock"
  #       @result = "C: #{rps.first.inspect} / U: #{player_1_option} - Sorry, You lose! Go on, try again"
  #     elsif @rps.first == "paper" && player_1_option == "scissors"
  #       @result = "C: #{rps.first.inspect} / U: #{player_1_option} - Awesome, You won!"
  #     elsif @rps.first == "scissors" && player_1_option == "paper"
  #       @result = "C: #{rps.first.inspect} / U: #{player_1_option} - Sorry, You lose! Go on, try again"
  #     elsif @rps.first == "scissors" && player_1_option == "rock"
  #       @result = "C: #{rps.first.inspect} / U: #{player_1_option} - Awesome, You won!"
  #     elsif @rps.first == player_1_option
  #       @result = "C: #{rps.first.inspect} / U: #{player_1_option} - Its a DRAW!!"
  #     else
  #       @result = "C: #{rps.first.inspect} / U: #{player_1_option} - ???"
  #   end
  # end

end
