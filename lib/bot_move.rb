# frozen_string_literal: true

def bot_move(mode)
  if mode == 'normal'
    move_normal
  else
    move_expanded
  end
end

def move_normal
  ['rock', 'paper', 'scissors'].sample
end

def move_expanded
  ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample
end
