require "scorekeeper"

describe Scorekeeper do
  let(:scorekeeper) { Scorekeeper.new }
  let(:player_one) { double(:player_one, choice: :rock) }
  let(:player_two) { double(:player_two, choice: :scissors) }

  describe '#result' do
    it 'returns winning player' do
      expect(scorekeeper.result(player_one, player_two)).to eq player_one
    end

    it 'returns "tie" if no winner' do
      allow(player_two).to receive(:choice).and_return(:rock)
      expect(scorekeeper.result(player_one, player_two)).to eq "tie"
    end
  end
end
