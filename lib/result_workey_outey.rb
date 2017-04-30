# Takes players choice and determines result
class Result_workey_outey

  def initialize
    @game = Game.load
  end

  def generate(turn)
    if turn[:player] == turn[:computer]; 'Draw'
    elsif turn[:player] == 'ROCK' && turn[:computer] == 'SCISSORS'; @game.player.name
    elsif turn[:player] == 'PAPER' && turn[:computer] == 'ROCK'; @game.player.name
    elsif turn[:player] == 'SCISSORS' && turn[:computer] == 'PAPER'; @game.player.name
    else 'Computer';
    end
  end

end
