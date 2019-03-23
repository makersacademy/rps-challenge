class Game

  OPTIONS = ['Rock', 'Paper', 'Scissors']

  def initialize(player)
    @player = player
  end

  def choice
    OPTIONS.sample
  end

end
