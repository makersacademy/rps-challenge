class Player

  WEAPONS = ["Rock", "Paper", "Scissors"]

  attr_reader :name, :score, :weapon, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def choice(choice)
    if choice == :random
      @weapon = WEAPONS[random_number].to_sym
    else
      @weapon = choice.to_sym
    end
  end

  def win
    @score += 1
  end

  private

    def random_number
      Kernel.rand(3)
    end
end
