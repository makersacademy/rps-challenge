require 'game'

describe Game do

  let(:player) { double :player, :choice => 'Rock' }
  let(:opponent) { double :opponent }

  subject { described_class.new(player, opponent) }

  it 'exists' do
    expect(subject).to be_an_instance_of(Game)
  end

  describe '#draw?' do
    it 'returns true if game is a draw' do
      allow(opponent).to receive(:choice) { 'Rock' }
      expect(subject.draw?).to eq true
    end
  end

  describe '#win?' do
    it 'returns true if player has beaten computer' do
      allow(opponent).to receive(:choice) { 'Scissors' }
      expect(subject.player_1_win?).to eq true
    end

    it 'returns false if computer has beaten player' do
      allow(opponent).to receive(:choice) { 'Paper' }
      expect(subject.player_1_win?).to eq false
    end
  end
end
