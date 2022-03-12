class Player
  attr_reader :name, :choice
  VALID_OPTIONS = [ 'rock', 'paper', 'scissors' ]

  def initialize(name, npc = false)
    @name = name
    @computer_controlled = npc 
    @choice = nil
  end

  def computer?
    @computer_controlled
  end

  def set_choice(choice)
    choice.downcase!
    raise 'Not a valid option' unless VALID_OPTIONS.include?(choice)

    @choice = choice
  end

  def clear_choice
    @choice = nil
  end
end
