class Player
attr_reader :name , :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def chosen_move(choice)
    @move = choice
  end

  def random_move
    @move = ["Rock" , "Paper" , "Scissors"].sample
  end
end
