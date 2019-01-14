require './lib/player'
class Computer < Player

  WEAPONS = {
    rps: ['rock', 'paper', 'scissors'],
    rpsls: ['rock', 'paper', 'scissors', 'lizard', 'spock']
  }

  def comp_choice
    make_move(WEAPONS[@game_type.to_sym].sample)
  end
end
