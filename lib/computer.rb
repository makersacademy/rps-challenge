class Computer
  attr_reader :choice
  OPTIONS = ['Rock', 'Paper', 'Scissors']

  def make_choice
    @choice = OPTIONS.sample
  end
end
