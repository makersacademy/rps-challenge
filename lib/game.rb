class Game
  STATEMENTS = ['Scissors cuts Paper', 
                'Scissors decapitates Lizard', 
                'Paper covers Rock', 
                'Paper disproves Spock',
                'Rock crushes Scissors',
                'Rock crushes Lizard',
                'Lizard eats Paper',
                'Lizard poisons Spock',
                'Spock vaporises Rock',
                'Spock smashes Scissors'
                ].freeze
  attr_reader :choices

  def initialize
    @choices = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
  end

  def result(choice1, choice2)
    return "This is a draw" if choice1 == choice2 
    STATEMENTS.find { |str| str.match(/#{choice1}.+#{choice2}/) } ? "You win" : "You lose"
  end

  def statement(choice1, choice2)
    STATEMENTS.find { |str| str.match(/(#{choice1}|#{choice2}).+(#{choice2}|#{choice1})/) }
  end

  def random_choice
    @choices.sample
  end
end
