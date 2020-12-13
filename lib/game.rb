class Game

  def initialize
    @game_array = ['rock', 'paper', 'scissors']
  end

  def rps
    @game_array.sample
  end

end
