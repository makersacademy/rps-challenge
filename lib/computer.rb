class Computer < Player

  def rand_choice
    @hand = options[rand(3)]
  end
end
