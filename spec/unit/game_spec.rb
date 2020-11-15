require 'game'

describe Game do
  subject(:game) { described_class.new("Alex", "Bill") }
  let(:bot) { double :bot, name: "Vanadium" }
  it { expect(Game).to respond_to(:new).with(2).arguments }

  it 'tests the players passed in' do
    expect(game.player_1).to eq "Alex"
  end

  it 'identifies a draw' do
    game.single_match("Scissors")
    allow(game).to receive(:sample_move) { "Scissors" }
    expect(game.single_match("Scissors")).to eq "Draw!"
  end

end
