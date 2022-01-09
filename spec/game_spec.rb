require 'game'

describe Game do
  let(:player_1) { double(:player) }
  subject { described_class.new(player_1) }

  it 'has a player' do
    expect(subject.player_1).to eq player_1
  end
end
