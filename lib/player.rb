class Player

  WEAPONS = ["Rock", "Paper", "Scissors"]

  attr_reader :name, :score, :weapon

  def initialize(name)
    @name = name
    @score = 0
  end

  def choice(choice)
    if choice == :random
      @weapon = WEAPONS[random_number].to_sym
    else
      @weapon = choice
    end
  end

  private

    def random_number
      Kernel.rand(3)
    end
end
