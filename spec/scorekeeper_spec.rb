require "scorekeeper"

describe Scorekeeper do
  let(:scorekeeper) { Scorekeeper.new }
  let(:player_one) { double(:player_one, choice: "Rock") }
  let(:player_two) { double(:player_two, choice: "Scissors") }

  describe '#result' do
    it 'returns winning player' do
      expect(scorekeeper.result(player_one, player_two)).to eq player_one
    end

    it 'returns "tie" if no winner' do
      allow(player_two).to receive(:choice).and_return("Rock")
      expect(scorekeeper.result(player_one, player_two)).to eq "tie"
    end
  end
end
