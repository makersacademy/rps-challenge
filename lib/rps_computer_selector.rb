class RpsComputerSelector

  CHOICE = ["Rock", "Paper", "Scissors"]

  def get_choice
    CHOICE[random_index]
  end

  private

  def random_index
    [0, 1, 2].sample
  end
end