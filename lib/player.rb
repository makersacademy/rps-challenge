
class Player
R = 0
P = 1
S = 2

a = [R,P,S].sample
b = [R,P,S].sample

def paper
  P
end

def rock
  R
end

def scissor
  S
end

def random
  [R,P,S].sample
end

def roll
if a == b
puts "tie"
end
end

end
