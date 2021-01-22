class Go
  attr_reader :name, :move, :computer_move

  def initialize(sessions)
    @name = sessions[:name]
    @move = sessions[:move]
    @computer_move = sessions[:computer_move]
  end

end
