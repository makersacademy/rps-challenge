require 'game'

describe Game do
  subject(:game) {described_class.new('sachin')}
  subject(:player) {double :player}

  describe "#initialize" do
    it 'game initializes with player' do
      expect(game.player).to eq 'sachin'
    end
  end

  describe "#play" do
    it 'gives result of game' do
      allow(game).to receive(:computer_weapon).and_return(:scissors)
      game.player.choice("paper")
      expect(game.result).to eq :win
    end
  end
end