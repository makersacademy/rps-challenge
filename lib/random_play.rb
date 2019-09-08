class Random_play
  def self.play
    values = [ 'ROCK', 'PAPER', 'SCISSORS' ]
    return values[rand(3)]
  end
end
