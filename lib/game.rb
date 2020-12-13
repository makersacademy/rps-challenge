class Game

  attr_accessor :challenger_name, :challenger_move, :machine_move

  def initialize(challenger_name)
    @challenger_name = challenger_name
  end

  def move_generator
    ["ROCK", "PAPER", "SCISSORS"].sample
  end

  def challenger_roll
    @challenger_move = move_generator
    @challenger_move
  end

  def machine_roll
    @machine_move = move_generator
    @machine_move
  end

  def winner?
    if @challenger_move == "SCISSORS" && @machine_move == "PAPER"
      "challengerwin"
    elsif @challenger_move == "PAPER" && @machine_move == "ROCK"
      "challengerwin"
    elsif @challenger_move == "ROCK" && @machine_move == "SCISSORS"
      "challengerwin"
    elsif @challenger_move == @machine_move
      "draw"
    else
      "machinewin"
    end
  end

end
