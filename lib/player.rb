class Player
  attr_reader :name, :type, :choice

  def initialize(name = "comp", type = "comp")
    @name = name
    @type = type
    choose_rand if type == "comp"
  end

  def choose_yellow
    @choice = "Yellow-throated sneaker"
  end

  def choose_blue
    @choice = "Dominant blue-throat"
  end

  def choose_orange
    @choice = "Ultradominant orange-throat"
  end

  def choose_rand
    selection = rand(3)
    if selection == 0
      @choice = "Yellow-throated sneaker"
    elsif selection == 1
      @choice = "Dominant blue-throat"
    else
      @choice = "Ultradominant orange-throat"
    end
  end

  private

  attr_writer :choice

end
