class Player
  attr_reader :choice, :name

  def initialize(name)
    @name = name
  end

  def choose(*choice)
    if @name == "Computer"
      choices = ["Rock", "Paper", "Scissors"]
      @choice = choices[Kernel.rand(3)]
    else
      @choice = choice.first
    end
  end
end
