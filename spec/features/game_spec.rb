require 'game'

describe Game do
  let(:playerA) { double(:player, name: 'Jerome') }
  let(:playerB) { double(:player, name: 'Jerry') }
  let(:game) { described_class.new(playerA) }
  let(:twoplayergame) { described_class.new(playerA, playerB) }
  it "saves player given to it" do
    expect(game.player1.name).to eq 'Jerome'
  end
  it "if second player not given, defaults to BOT" do
    expect(game.player2).to be_an_instance_of Bot
  end
  it "expects two player game to have two players" do
    expect(twoplayergame.player1.name).to eq 'Jerome'
    expect(twoplayergame.player2.name).to eq 'Jerry'
  end
end
