require_relative 'player'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1)
    @player_1 = player_1
    @player_2 = Player.new(generate_name)
    @selections = []
  end

  def player_select(selection)
    @selections << selection
  end

  def computer_select
    @selections << ['r','p','s'].sample
  end

  def choices
    @selections.dup
  end

  private

  def generate_name
    ['Yoshimitsu','Frieza','Cersei','Robotnik','Farage'].sample
  end
end
