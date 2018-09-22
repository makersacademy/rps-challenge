class Player
  attr_reader :name, :choice, :choices
  def initialize(name)
    @name = name
    @choices = ['Rock', 'Paper', 'Scissors']
    @choice = nil
  end

  def choice_setter(option)
    raise "That option is not avaiable" unless avaiable_option?(option)
    @choice = option
  end

  private

  def avaiable_option?(option)
    choices.include?(option)
  end
end
