require 'game'

describe Game do
  let(:p1) {double(:p1)}
  let(:p2) {double(:p2)}
  subject(:game) {described_class.new(p1, p2)}

  describe '#name' do
    it 'takes player 1' do
      expect(game.player_1).to eq p1
    end

    it 'takes player 2' do
      expect(game.player_2).to eq p2
    end
  end

  describe '#instance' do
    it 'generates and stores itself' do
      Game.generate(p1, p2)
      expect(Game.instance).to be_a Game
    end
  end
end
