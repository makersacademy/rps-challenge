class RockPaperScissors
    attr_reader :choice, :name

    def initialize(name)
        @choice = ["rock", "paper", "scissors"].sample
        @name = name
    end


    def play(player_choice)
    if player_choice == "rock" && @choice == "rock"
        puts "It's a draw"
      elsif player_choice == "paper" && @choice == "paper"
        puts "It's a draw"
      elsif player_choice == "scissors" && @choice == "scissors"
        puts "It's a draw"
      elsif player_choice == "rock" && @choice == "scissors"
        puts "#{@name} wins"
      elsif player_choice == "paper" && @choice == "rock"
        puts "#{@name} wins"
      elsif player_choice == "scissors" && @choice == "paper"
        puts "#{@name} wins"
      else
        puts "Computer wins"
      end
    end


end