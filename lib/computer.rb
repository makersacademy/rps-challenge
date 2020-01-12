class Computer
  def move
    random_num = rand(1..9)
    @move = 'Rock' if random_num <= 3
    @move = 'Paper' if random_num.between?(4,6)
    @move = 'Scissor' if random_num.between?(7,9)
    @move
    # hash = { Rock: 1, 2, 3,
    #         Paper: 4, 5, 6,
    #       Scissor: 7, 8, 9}.sample - ran out of time wanted to make it
    # a hash list on refactor but wanted to complete by deadline. 
  end
end
