class ComputerPlayer

  attr_reader :object

  def random_selection
    puts "Computer is #{[:Rock, :Paper, :Scissors].sample}"
  end

end
