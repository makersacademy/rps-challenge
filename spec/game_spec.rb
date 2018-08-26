require 'game.rb'

describe Game do

  subject(:game) { described_class.new(mockPlayer_1, mockPlayer_2) }
  let(:mockPlayer_1) { double :player }
  let(:mockPlayer_2) { double :player }

  it "initializes with two players" do
    expect(game.player_1).to eq mockPlayer_1
    expect(game.player_2).to eq mockPlayer_2
  end

  it "initializes with a number of rounds to play" do
    expect(subject.rounds).to be_an Integer
  end

  it "compares player moves" do
    allow(game.player_1).to receive(:move).and_return("rock")
    allow(game.player_2).to receive(:move).and_return("paper")
    expect(game.round_winner).to eq mockPlayer_2
  end

end
