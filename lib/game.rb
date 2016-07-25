class Game
  attr_reader :choice1, :choice2

  def initialize(choice1 = nil, choice2 = nil)
    @choice1 = choice1
    @choice2 = choice2
    @rules = {
      'Scissors' => 'Rock',
      'Paper' => 'Scissors',
      'Rock' => 'Paper'
    }
  end

  def results(choice1, choice2)
    if choice1 == choice2
      'tie'
    elsif @rules[choice2].include?(choice1)
      'win'
    else
      'lose'
    end

  end
end
