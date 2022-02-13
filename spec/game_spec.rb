require 'game'

describe Game do

  subject(:game) { described_class.new('Rock') }
  describe 'on #initialize' do
    it 'saves the players selection' do
      expect(game.player).to eq 'Rock'
    end
  end

  describe '#ai' do
    it 'generates a random selection for the ai' do
      expect(game).to receive(:ai) { 'Scissors' }
      expect(game.ai).to eq 'Scissors'
    end
  end

  describe '#result' do
    it 'determines a winner and returns the result' do
      expect(game).to receive(:result) { 'The Computer won!' }
      expect(game.result).to eq 'The Computer won!'
    end
  end

end