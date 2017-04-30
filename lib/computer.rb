class Computer
  def move
    random_num = rand(1..9)
    @move = 'Rock' if random_num <= 3
    @move = 'Paper' if random_num.between?(4,6)
    @move = 'Scissor' if random_num.between?(7,9)
    @move
  end
end
