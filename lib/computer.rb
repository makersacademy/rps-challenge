require './lib/player'
class Computer < Player

  def comp_choice
    set_move(['rock', 'paper', 'scissors'].sample)
  end
end
