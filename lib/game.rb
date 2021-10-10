class Game 
  attr_reader :player, :cpu, :cpu_score, :player_score, :result, :cpu_turn

  def initialize(player = Player.new, cpu = Computer.new)
    @player = player
    @cpu = cpu
    @cpu_turn = nil
    @player_score = 0
    @cpu_score = 0
    @result = "Take a spin!"
  end 

  def turn(turn, _player = @player, cpu = @cpu)
    @cpu_turn = computer_turn(cpu)
    if (turn.to_sym) == @cpu_turn
      @result = "#{@player.name} picked #{turn.to_sym}, CPU picked #{@cpu_turn}. Draw. Try again!"
    elsif @cpu_turn == winning_choice(turn.to_sym)
      add_points("cpu")
      @result = "#{@player.name} picked #{turn.to_sym}, CPU picked #{@cpu_turn}. CPU wins!!"
    else
      add_points("player") 
      @result = "#{@player.name} picked #{turn.to_sym}, CPU picked #{@cpu_turn}. #{@player.name} wins!!"
    end
  end

  private

  def winning_choice(players_go)
    index = [:scissors, :paper, :rock].index(players_go)
    winning_choice = [:scissors, :paper, :rock][index - 1]
  end 

  def computer_turn(cpu)
    cpu.move 
  end 

  def add_points(winner)
    winner == "player" ? (@player_score += 1) : (@cpu_score += 1)
  end 

end
