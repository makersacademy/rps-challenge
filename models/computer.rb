class Computer
  MOVE_OPTIONS = ['rock', 'paper', 'scissors']

  def move
    MOVE_OPTIONS[rand(0..2)]
  end
end