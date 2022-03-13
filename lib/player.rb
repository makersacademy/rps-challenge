class Player
  attr_reader :name, :choice
  VALID_OPTIONS = ['rock', 'paper', 'scissors'].freeze

  def initialize(name, npc = false)
    @name = name
    @computer_controlled = npc 
    @choice = nil
  end

  def computer?
    @computer_controlled
  end

  def choice_made?
    @choice != nil
  end

  def choice=(choice)
    choice.downcase!
    raise 'Not a valid option' unless VALID_OPTIONS.include?(choice)

    @choice = choice
  end

  def set_random_choice
    @choice = VALID_OPTIONS.sample
  end

  def clear_choice
    @choice = nil
  end
end
