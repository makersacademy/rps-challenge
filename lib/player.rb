class Player
  attr_reader :name, :choice, :choices
  def initialize(name)
    @name = name.capitalize
    @choices = ['rock', 'paper', 'scissors']
    @choice = nil
  end

  def generate_choice(option = choices[rand(0..2)])
    raise "That option is not avaiable" unless avaiable_option?(option)
    @choice = option
  end

  private

  def avaiable_option?(option)
    choices.include?(option)
  end

end
