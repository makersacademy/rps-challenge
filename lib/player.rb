class Player
  attr_reader :name

  WEAPONS = {'Rock' => 1,
            'Paper' => 2,
            'Scissors' => 3,
            'Spock' => 4,
            'Lizard' => 5}

  def initialize(selection=0, name='Computer')
     selection == 0 ? @choice = auto_choose : @choice = selection_hash(selection)
     @name = name
  end

  def choice
    @choice.dup
  end

  private

  def selection_hash(selection)
    WEAPONS.select {|key, _value| key == selection }
  end

  def random_number
    Kernel.rand(1..5)
  end

  def auto_choose
    number = random_number
    WEAPONS.select {|_key, value| value == number }
  end

end
