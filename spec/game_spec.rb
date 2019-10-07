require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:subject) { described_class.new(player_1, player_2) }

  describe '#self.get' do
    it 'returns an instance of class' do
      subject = Game.create(player_1, player_2)
      expect(Game.instance).to eq subject
    end
  end

  describe '#player_1' do
    it 'returns player 1' do
      expect(subject.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns player 2' do
      expect(subject.player_2).to eq player_2
    end
  end

  describe '#winner' do
    it 'uses rps rules to assign a game winner' do
      allow(subject.player_1).to receive(:choice).and_return 'Rock'
      allow(subject.player_2).to receive(:choice).and_return 'Paper'
      expect(subject.winner).to eq player_2
    end
  end

  describe '#draw?' do
    it 'returns true if game draw' do
      allow(subject.player_1).to receive(:choice).and_return 'Rock'
      allow(subject.player_2).to receive(:choice).and_return 'Rock'
      expect(subject.draw?).to eq true
    end
  end
end
