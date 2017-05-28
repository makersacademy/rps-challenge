require_relative 'player'

class ComputerPlayer

  attr_reader :object, :computer_object

  def random_selection
    [:Rock, :Paper, :Scissors].sample
  end

end
