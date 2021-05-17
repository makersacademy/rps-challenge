require './RPS'

class Player2

  attr_reader :player_2_name, :player_2_selection

  def initialize (player_2_name, player_2_selection)
    @player_2_name = player_2_name
    @player_2_selection = player_2_selection

  end

  def who
   p @player_2_name
  end

  def test
   p rock_paper_scissors

  end

end

test = Player2.new('dave', 'rock')
test.who
test.test