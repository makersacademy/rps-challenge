require 'game'

class Player

  attr_reader :choice, :name

  CHOICE_VALUE_PAIRS = {'Rock' => 1,
                        'Paper' => 2,
                        'Scissors' => 3}

  def initialize(selection=0, name='Computer')
     selection == 0 ? @choice = auto_choose : @choice = selection_hash(selection)
     @name = name
  end

  private

  def selection_hash(selection)
    CHOICE_VALUE_PAIRS.select {|key, value| key == selection }
  end

  def random_number
    Kernel.rand(1..3)
  end

  def auto_choose
    CHOICE_VALUE_PAIRS.select {|key, value| value == random_number}
  end

end
