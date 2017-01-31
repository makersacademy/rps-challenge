require 'game'

describe Game do
  subject(:game) {described_class.new("stephan")}
  let (:robot) {double (:robot)}

  describe '#compare_rock' do
    it 'give a winner' do
      allow(game).to receive(:compare_rock).and_return("draw")
      expect(game.compare_rock).to eq "draw"
    end
  end
end
