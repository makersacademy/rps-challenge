class Computer

  attr_reader :weapon

  def random_weapon
    random_number = rand(0..2)
    if random_number == 0
      @weapon = "Rock"
    elsif random_number == 1
      @weapon = "Paper"
    else
      @weapon = "Scissors"
    end
  end
end
