require 'game'

describe Game do
  subject(:game) {described_class.new(player)}
  let (:robot) {double (:robot)}

  describe '#compare_rock' do
    it 'give a winner' do
      expect(game.compare_rock).to eq "draw"
    end
  end
end
