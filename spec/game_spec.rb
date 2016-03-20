require 'game'

describe Game do
  subject(:game) {described_class.new('sachin', 'computer')}
  subject(:player) {double :player}
  subject(:computer) {double :computer}

  describe "#initialize" do
    it 'game initializes with player' do
      expect(game.player.name).to eq 'sachin'
    end
  end

  describe "#play" do
    it 'gives result of game' do
      allow(computer).to receive(:weapon).and_return(:scissors)
      game.player.choice("paper")
      expect(game.result).to eq :win
    end
  end
end