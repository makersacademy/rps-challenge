require 'player'

describe Player do
  subject(:player) { described_class.new('Player') }

  context 'on initialize' do
    it 'shows score' do
      expect(subject.score).to eq 0
    end
  end

  context '#score_up' do
    it 'adds 1 to the current score' do
      expect { subject.score_up } .to change { subject.score } .by(1)
    end
  end
end
