require_relative 'player'


class Game

  attr_reader :comp_pick

  def initialize
    @comp_pick = ""
  end

  def comp_choice 
    @comp_pick = ['rock','paper','scissors'].sample
  end

end
