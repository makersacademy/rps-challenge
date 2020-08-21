require 'game'

describe Game do

  let(:rock) { double :rock }

  subject(:game) { described_class.new(rock) }

  it 'exists' do
    expect(game).to be_an_instance_of(Game)
  end

  describe '#draw?' do
    it 'returns true if game is a draw' do
      allow(subject).to receive(:comp_choice) { rock }
      expect(subject.draw?).to eq true
    end
  end

end
