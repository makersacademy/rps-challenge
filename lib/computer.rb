class Computer
  def weapon
    choose_random_weapon
  end

  private

  def choose_random_weapon
    ["Rock", "Paper", "Scissors"].sample
  end
end
