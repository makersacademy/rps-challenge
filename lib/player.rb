class Player
  attr_reader :name, :type, :choice

  CHOICE = ["Yellow-throated sneaker", "Dominant blue-throat", "Ultradominant orange-throat"]

  def initialize(name = "comp", type = "comp")
    @name = name
    @type = type
    choose_rand if type == "comp"
  end

  def choose_yellow
    @choice = CHOICE[0]
  end

  def choose_blue
    @choice = CHOICE[1]
  end

  def choose_orange
    @choice = CHOICE[2]
  end

  def choose_rand
    self.choice = CHOICE.sample
  end

  private

  attr_writer :choice

end
