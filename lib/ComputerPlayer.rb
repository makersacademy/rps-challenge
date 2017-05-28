require 'player'

class ComputerPlayer

  attr_reader :object, :computer_object

  def random_selection
    puts "Computer is #{[:Rock, :Paper, :Scissors].sample}"
  end

end
