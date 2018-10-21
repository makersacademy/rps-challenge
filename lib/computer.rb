
class Computer

  attr_reader :name

  def initialize
    @name = name_choice
  end

  def name_choice
    ['Edward', 'Balboa', 'Cutter'].sample
  end

  def choice
    pick
  end

  def pick
    ['Rock', 'Paper', 'Scissors'].sample
  end

end
