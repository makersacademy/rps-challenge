#sets player and machine choices and compares them to pass an interpreter the correct result

class ChoiceManager

  RANKING = ['ROCK','SCISSORS','PAPER']

  def self.setup(player1,player2)
    @choice_manager = ChoiceManager.new(player1,player2)
  end

  def self.instance
    @choice_manager
  end

  attr_reader :player1, :player2, :current_player, :opponent

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
    @opponent = @player2
  end

  def swap_players
    @current_player, @opponent = @opponent, @current_player
  end

  def set_choice(player_choice)
  	current_player.choice=player_choice
  end

  def set_random_choice
    opponent.choose
  end

  def finished?
    !!player1.choice && !!player2.choice
  end

  def clear
    [player1,player2].each{|player| player.clear}
  end

  def result(interpreter=Interpreter.new)
    return interpreter.print(player1) if ((player1_index+1 == player2_index) || (player1_index-2 == player2_index))
    return interpreter.print(player2) if ((player2_index+1 == player1_index) || (player2_index-2 == player1_index))
    return interpreter.print(:draw) if player1_index == player2_index
  end

  private

  def player1_index
  	RANKING.index{|weapon| weapon == player1.choice}
  end

  def player2_index
  	RANKING.index{|weapon| weapon == player2.choice}
  end

end