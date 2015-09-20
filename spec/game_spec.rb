require "game"
require "human_player"

describe Game do

  subject do
    Game.new(player_1, player_2)
  end

  it "decides if player 1 wins" do
    player_1 = HumanPlayer.new("Sarah")
    player_2 = HumanPlayer.new("Martin")
    player_1.set_throw(:rock)
    player_2.set_throw(:scissors)
    game = Game.new(player_1, player_2)
    expect(game.play).to eq "Congratulations, Sarah won this game! Sarah played rock, Martin played scissors."
  end

  it "decides if it is a draw" do
    player_1 = HumanPlayer.new("Sarah")
    player_2 = HumanPlayer.new("Martin")
    player_1.set_throw(:rock)
    player_2.set_throw(:rock)
    game = Game.new(player_1, player_2)
    expect(game.play).to eq "Oh, this is a draw! Sarah played rock, Martin played rock."
  end

  it "decides if player 1 loses" do
    player_1 = HumanPlayer.new("Sarah")
    player_2 = HumanPlayer.new("Martin")
    player_1.set_throw(:scissors)
    player_2.set_throw(:rock)
    game = Game.new(player_1, player_2)
    expect(game.play).to eq "Sorry, Sarah lost this game! Sarah played scissors, Martin played rock."
  end

  it "counts the number of wins" do
    player_1 = HumanPlayer.new("Sarah")
    player_2 = HumanPlayer.new("Martin")
    player_1.win!
    player_1.win!
    expect(player_1.wins).to eq(2)
  end

end




# #it "can accept a single player" do
# #it "switches turns between player and computer"
# #it "raises there is a winner if there is a winner" do
# #it "should respond to result"
# #it "should respond to computer move"
# #it "should work out if rock beats computer scissors"
# #computer can win
# #player can win
# #there can be a draw