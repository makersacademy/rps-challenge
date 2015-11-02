class Game

  attr_reader :item, :computer_item

  def initialize(item)
    @item = item
  end

  def computer_item
    weapons = ["Rock", "Paper", "Scissors"]
    weapons.sample
  end

  def who_wins(item, computer_item)
    item ' + ' computer_item
  end
end
