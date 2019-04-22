require 'game'

describe Game do
  let(:player) { double :player }
  let(:subject) { described_class.new(player) }

  describe '#self.get' do
    it 'returns an instance of class' do
      subject = Game.create(player)
      expect(Game.instance).to eq subject
    end
  end

  describe '#player' do
    it 'returns the player' do
      expect(subject.player).to eq player
    end
  end

  describe '#game_choice' do
    it 'returns the games rps choice' do
      srand(1)
      expect(subject.game_choice).to eq 'Paper'
    end
  end

  describe '#decide_winner' do
    it 'uses rps rules to assign a game winner' do
      srand(1)
      allow(subject.player).to receive(:choice).and_return ('Rock')
      expect(subject.decide_winner).to eq 'Loser'
    end
    it 'uses rps rules to assign a game draw' do
      srand(2)
      allow(subject.player).to receive(:choice).and_return ('Rock')
      expect(subject.decide_winner).to eq 'Draw'
    end
  end
end
