class Player
  attr_reader :name, :type, :choice

  def initialize(name = "comp", type = "comp")
    @name = name
    @type = type
    choose_rand if type == "comp"
  end

  def choose_yellow
    @choice = "yellow-throat"
  end

  def choose_blue
    @choice = "blue-throat"
  end

  def choose_orange
    @choice = "orange-throat"
  end

  def choose_rand
    selection = rand(3)
    if selection == 0
      @choice = "yellow-throat"
    elsif selection == 1
      @choice = "blue-throat"
    else
      @choice = "orange-throat"
    end
  end

  private

  attr_writer :choice

end
