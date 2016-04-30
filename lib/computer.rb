class Computer

  def self.create
    @computer = Computer.new
  end

  def self.object
    @computer
  end

  def choose_weapon
    num = choose_rand
    if num == 1
      @chosen = "rock"
    elsif num == 2
      @chosen = "paper"
    else
      @chosen = "scissors"
    end
  end

  def chosen
    @chosen
  end

  private

  def choose_rand
    rand(1..3)
  end
end
