class Player
  attr_reader :name, :choice
  def initialize(name)
    @name = name.capitalize
    @choices = ['rock', 'paper', 'scissors']
    @choice = nil
  end

  def set_choice(option = choices[rand(0..2)])
    raise "That option is not avaiable" unless avaiable_option?(option)
    @choice = option
  end

  private

  attr_reader :choices

  def avaiable_option?(option)
    choices.include?(option)
  end

end
