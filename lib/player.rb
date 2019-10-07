class Player
  attr_reader :choice
  def initialize(name)
    @name = name
    @computer = false
    @choice = nil
  end

  def name
    @name.dup
  end

  def computer?
    @computer.dup
  end

  def make_choice(choices, choice_string: nil)
    if choice_string.nil?
      return @choice = choices[Kernel.rand(0...choices.size)] 
    end
    choices.each do |choice|
      @choice = choice if choice.name == choice_string
    end
  end
end
