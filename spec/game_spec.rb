require 'game'

describe Game do

  before(:each) do
    @game = Game.new
  end

  it "should receive private method 'find_winner' once" do
    @game.instance_variable_set(:@player_score, 2)
    @game.should_receive(:find_winner).exactly(1).times
    @game.end_game?
  end

  it "should check winner, say the player, and add 1 to their score" do
    player_move = double("Rock")
    computer_move = double("Scissors")
    @game.check_round_winner(player_move, computer_move)
    expect(@game.player_score).to eql(1)
  end

end
