
# in lib/game.rb
MOVES = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spoc'],
  scissors: ['paper', 'lizard'],
  lizard: ['spoc', 'paper'],
  spoc: ['scissors', 'rock']
}

def reset(session)
  session[:player] = nil
  session[:computer] = nil
  session[:action] = nil
end

def action(session)
  player = Player.from_session(session)
  computer = Player.simulate(session)
  winner = perform_action(player, computer)
  [player, computer, winner]
end

private

def perform_action(player, computer)
  case determine_winner(player.action, computer.action)
  when 1; return apply_reward!(player)
  when 2; return apply_reward!(computer)
  else; return "draw"
  end
end

def determine_winner(one, two)
  return nil if one.nil? || two.nil?
  return 1 if MOVES[one.to_sym].include?(two)
  return 2 if MOVES[two.to_sym].include?(one)
  return 0
end

def apply_reward!(player)
  player.score += 1
  player.name
end
