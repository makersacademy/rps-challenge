require_relative '../app'

describe Player do
  let(:player) { described_class.new(:name) }
    describe '#record_score' do
      it 'records when a player won a tie' do
      expect { player.record_score }.to change {player.score}.by 1
    end
  end
end
