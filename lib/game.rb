class Game

  attr_reader :item, :computer_item

  def initialize(player, item)
    @player = player
    @item = item
    @rules = {rock: {rock: :tie, paper: :lose, scissors: :win},
                 paper: {rock: :win, paper: :tie, scissors: :lose},
                 scissors: {rock: :lose, paper: :win, scissors: :tie}
                }
  end

  def computer_item
    weapons = ["Rock", "Paper", "Scissors"]
    weapons.sample
  end

  def winner(item,computer_item)
    outcomes = @rules[item.downcase.to_sym][computer_item.downcase.to_sym]
    if outcomes == :win
      "Congrats"
    elsif outcomes == :lose
      "Sorry"
    else
      "Roll Again"
    end
  end
end
