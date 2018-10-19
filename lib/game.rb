class Game

attr_reader :marketeer

  def initialize(marketeer)
    @marketeer = marketeer
  end

  def random_assignment
    @choices = ['Rock', 'Paper', 'Scissors']
    @choice = @choices[rand(@choices.length)]
  end

  def computer_choice
    random_assignment
  end

end
