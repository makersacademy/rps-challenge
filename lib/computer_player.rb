
class Computer_Player
  CHOICE_ARRAY = [:rock, :paper, :scissors]
  def play
    choice = CHOICE_ARRAY[Kernel.rand(CHOICE_ARRAY.length)]
  end
end
