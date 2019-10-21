require_relative 'checker'
class Check

  def initialize(player1_card, player2_card, name1, name2, options)
    @player_1_card, @player_2_card = player1_card, player2_card
    @player_1_name, @player_2_name, @options = name1, name2, options
  end

  def confirm
    checker
  end

end
