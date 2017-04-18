class Game

  attr_reader :choice, :random

  def initialize(choice=nil)
    @choice = choice
    @possible = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" }

  end

  def won?
     @possible.each do |winner, loser|
        if winner == @choice && loser == @random
          puts "a"
          return true
        elsif loser == @choice &&  winner == @random
          puts "b"
          return false
        end
    end
  end

  def computer_play
    values = @possible.to_a.flatten
    @random = values[rand(values.length)]
  end
end
