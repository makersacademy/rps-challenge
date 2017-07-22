require 'game'

describe Game do
  let(:name) { double :name}
  subject(:game) {described_class.new(:name)}

  describe '#human_select' do
    it "stores player's choice of object" do
      game.human_select('rock')
      expect(game.human_selection).to eq 'rock'
    end
  end
end
