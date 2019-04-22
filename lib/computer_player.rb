class ComputerPlayer

  attr_reader :name, :choice

  def initialize(name = 'Computer')
    @name = name
    @choice = pick_random(OPTIONS)
  end

  private

  OPTIONS = ['Rock', 'Paper', 'Scissors']

  def pick_random(option)
    option.sample
  end
end
