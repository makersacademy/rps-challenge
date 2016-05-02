class Computer
  OPTIONS = ["Rock", "Paper", "Scissors"]

  def option
    OPTIONS.sample.to_s.capitalize
  end
end
