require_relative 'rps_game/game'
$game = Game.new
$cpu = Cpu.new

def cpu_move_image
  return "<img src='http://i59.tinypic.com/2v15doy.png'>" if $cpu.last_move == :rock
  return "<img src='http://i62.tinypic.com/wtu5p1.png'>" if $cpu.last_move == :paper
  return "<img src='http://i58.tinypic.com/f2tpqq.png'>" if $cpu.last_move == :scissors
end