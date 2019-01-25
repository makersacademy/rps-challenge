class Game

  attr_reader :player, :cpu

  def initialize(player, cpu = Cpu, rps = Rps, printer = Printer)
    @rps = rps.new
    @player = player
    @cpu = cpu.new
    @printer = printer.new
  end

  def select_player_move(chosen_move)
    @player.select_move(chosen_move)
  end

  def select_cpu_move
    @cpu.select_move(random_move)
  end

  def print_result
    @printer.winner(decide_result)
  end


  private

  def random_move
    @rps.available_moves.sample
  end

  def decide_result
    @rps.decide_result(@player, @cpu)
  end

end
