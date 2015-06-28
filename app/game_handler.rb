require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'

class HandGameHandler # change to SignGame. Rock paper scissors can inherit from it?
  def initialize *choices
    @choices = choices
  end

  def choose player_choice#, random_choice
    player_choice.versus random_choice
  end

  def random_choice
    @choices.sample
  end
end
