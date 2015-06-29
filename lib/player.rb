class Player

attr_reader :options, :choice

  def initialize
    @options = ['Rock','Paper','Scissors']
    @choice = ''
  end

  def selection choice
    fail selection_error unless options.include? choice
    @choice = choice
  end

  def selection_error
    'Please select Rock, Paper or Scissors'
  end
end