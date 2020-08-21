require 'game'

describe Game do

  subject(:game) { described_class.new('Rock') }

  it 'exists' do
    expect(game).to be_an_instance_of(Game)
  end

  describe '#draw?' do
    it 'returns true if game is a draw' do
      allow(subject).to receive(:comp_choice) { 'Rock' }
      expect(game.draw?).to eq true
    end
  end

  describe '#win?' do
    it 'returns true if player has beaten computer' do
      allow(subject).to receive(:comp_choice) { 'Scissors' }
      expect(game.win?).to eq true
    end

    it 'returns false if computer has beaten player' do
      allow(subject).to receive(:comp_choice) { 'Paper'}
      expect(game.win?).to eq false
    end
  end

end
