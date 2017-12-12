
class ComputerSelection

  attr_reader :array_of_options, :computer_selection

  def initialize
    @array_of_options = ['Rock', 'Paper', 'Scissors']
  end

  def computer_selection
    @array_of_options.sample
  end


end
