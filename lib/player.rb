class Player

  attr_reader :name, :move

  def initialize(name = "Robot")
    @name = name
    @move = nil
  end

  def move
    if @name == "Robot"
      random_move
    end
  end

 private

  def random_move
    @move = ["Rock", "Paper", "Scissors"].sample
  end

end
