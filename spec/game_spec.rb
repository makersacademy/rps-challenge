require_relative '../lib/game'

describe Game do
  subject(:game) { described_class.new("Alex", "Bill") }

  it { expect(Game).to respond_to(:new).with(2).arguments }

  it 'tests the players passed in' do
    expect(game.player_1).to eq "Alex"
  end
end
