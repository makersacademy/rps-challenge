
class Sampler

  def generate
    choice = ["Rock", "Paper", "Scissors"]
    Kernel.rand(choice.length)
  end
end 
