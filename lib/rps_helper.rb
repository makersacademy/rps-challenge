require_relative 'rps_game/game'
$game = Game.new
$cpu = Cpu.new

def cpu_move_image
  return "<img src='http://oi58.tinypic.com/28hel93.jpg'>" if $cpu.last_move == :rock
  return "<img src='http://oi61.tinypic.com/2w3x3za.jpg'>" if $cpu.last_move == :paper
  return "<img src='http://oi57.tinypic.com/34xnz9v.jpg'>" if $cpu.last_move == :scissors
end