require_relative 'checker'
class Check

  def initialize(player1_card, player2_card, name1, name2)
    @player_1_card, @player_2_card = player1_card, player2_card
    @player_1_name, @player_2_name = name1, name2
  end

  def confirm
    checker
  end

end
