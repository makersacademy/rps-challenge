#sets player and machine choices and compares them to pass an interpreter the correct result

class ChoiceManager

  RANKING = ['ROCK','SCISSORS','PAPER']

  def self.setup(player,machine)
    @choice_manager = ChoiceManager.new(player,machine)
  end

  def self.instance
    @choice_manager
  end

  attr_reader :player, :machine

  def initialize(player,machine)
    @player = player
    @machine = machine
  end

  def set_choices(player_choice)
  	player.choice=player_choice
  	machine.choose
  end

  def result(interpreter=Interpreter.new)
    return interpreter.print(:player) if ((player_index+1 == machine_index) || (player_index-2 == machine_index))
    return interpreter.print(:machine) if ((machine_index+1 == player_index) || (machine_index-2 == player_index))
    return interpreter.print(:draw) if player_index == machine_index
  end

  private

  def player_index
  	RANKING.index{|weapon| weapon == player.choice}
  end

  def machine_index
  	RANKING.index{|weapon| weapon == machine.choice}
  end

end