class Computer
  attr_reader :name
  attr_accessor :choice

  OPTIONS = ['Rock', 'Paper', 'Scissors']

  def initialize
    @name = 'Computer'
  end

  def make_choice
    @choice = OPTIONS.sample
  end
end
