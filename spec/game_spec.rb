require 'game'

describe Game do
  subject(:game) { described_class.new(player_one, computer) }
  let(:scissors) { double(:weapon, type: :scissors) }
  let(:paper) { double(:weapon, type: :paper) }
  let(:rock) { double(:weapon, type: :rock) }
  let(:player_one) { double(:player, name: 'Kye', weapon: scissors) }
  let(:computer) { double(:computer, name: 'Computer', weapon: paper) }

  describe '#initialize' do
    it 'stores a player one' do
      expect(game.player_one).to eq player_one
    end

    it 'stores a player two' do
      expect(game.player_two).to eq computer
    end

    it 'has a default winner of "Nobody"' do
      expect(game.winner).to eq 'Nobody'
    end
  end

  describe '#decide_winner' do
    it 'declares player one the winner' do
      p "VVV PRINTING VVV"
      p game
      p game.player_one.weapon
      p game.player_two.weapon
      allow(scissors).to receive(:beats?).with(paper).and_return(true)
      allow(paper).to receive(:beats?).with(scissors).and_return(false)
      expect(game.decide_winner).to eq player_one
    end
  end
end
