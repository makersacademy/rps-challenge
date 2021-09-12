class Game
  attr_reader :choices

  def initialize
    @choices = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
    @winmap = { 'Scissors' => 'Paper', 'Scissors' => 'Lizard', 
                'Paper' => 'Rock', 'Paper' => 'Spock', 
                'Rock' => 'Scissors', 'Rock' => 'Lizard', 
                'Lizard' => 'Paper', 'Lizard' => 'Spock',
                'Spock' => 'Rock', 'Spock' => 'Scissors'
              }
  end

  def result(choice1, choice2)
    return "This is a draw" if choice1 == choice2
    @winmap[choice1] == choice2 ? "You win" : "Computer wins"
  end

  def random_choice
    @choices.sample
  end
end
