class Game

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  attr_reader :name, :choice, :computer_choice

  def initialize(name)
    @name = name
    @choice = nil
    @rps = WEAPONS
  end

  def choose_rock
    @choice = "Rock"
    npc_choice
  end

  def choose_paper
    @choice = "Paper"
    npc_choice
  end

  def choose_scissors
    @choice = "Scissors"
    npc_choice
  end

  def draw?
    @choice == @computer_choice
  end

  def winning?
    if @choice == 'Rock' && @computer_choice == 'Scissors'
      true
    elsif @choice == 'Paper' && @computer_choice == 'Rock'
      true
    elsif @choice == 'Scissors' && @computer_choice == 'Paper'
      true
    else
      false
    end
  end

  private

  def npc_choice
    @computer_choice = @rps[random_value]
  end

  def random_value
    rand(3)
  end

end
