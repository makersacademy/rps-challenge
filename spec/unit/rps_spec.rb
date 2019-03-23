require 'rps'
describe RPS do

  subject(:game) { described_class.new }

  describe '#play' do

    it 'returns Rock' do
      allow(game).to receive(:rand).and_return(1)
      expect(game.play).to eq 'Rock'
    end

    it 'returns Paper' do
      allow(game).to receive(:rand).and_return(2)
      expect(game.play).to eq 'Paper'
    end

    it 'returns Scissors' do
      allow(game).to receive(:rand).and_return(3)
      expect(game.play).to eq 'Scissors'
    end
  end

end
