module Computer
  MOVE_OPTIONS = ['rock', 'paper', 'scissors']

  def Computer.move
    MOVE_OPTIONS[rand(0..2)]
  end
end
