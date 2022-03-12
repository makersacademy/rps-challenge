class Computer

  attr_reader :choice

  OPTIONS = ['Rock', 'Paper', 'Scissors'].freeze

  def attack
    @choice = OPTIONS.sample
  end
end
