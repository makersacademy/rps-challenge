require 'game'

describe Game do
  let(:player_one) { double(:player) }
  subject { described_class.new(player_one) }

  it 'has a player' do
    expect(subject.player_one).to eq player_one
  end
end
