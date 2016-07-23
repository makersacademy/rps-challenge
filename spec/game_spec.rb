require 'game'

describe Game do
  subject(:game) { described_class.new(player_name, player_selection, computer_selection) }
  let(:player_name) { 'Joe' }
  let(:player_selection) { :Scissors }
  let(:computer_selection) { :Paper }

  describe '#player_name' do
    it 'returns players name' do
      expect(game.player_name).to eq('Joe')
    end
  end

  describe '#player_selection' do
    it 'returns the players selection' do
      expect(game.player_selection).to eq(:Scissors)
    end
  end

  describe '#computer_selection' do
    it 'returns the computers selection' do
      expect(game.computer_selection).to eq(:Paper)
    end
  end

  context '#result' do
    describe 'player wins' do
      it 'confirms player as the winner' do
      expect(game.winner?).to be true
      end
    end
  end
end
