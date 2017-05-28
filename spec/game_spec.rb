require 'game'

describe Game do
  let(:player) { double(:player, name: 'Jerry', hand: 'Rock', value_hand: 2, wins: true) }
  let(:computer) { double(:computer, hand: 'Scissors', value_hand: 4, wins: false) }
  subject(:game) { described_class.new(player, computer) }

  describe 'initialize' do
    it 'initializes with player' do
      expect(game.player.name).to eq 'Jerry'
    end
  end 

  describe '#winner' do
    it 'shows whose hand has won' do
      expect(game.winner).to eq 'Scissors wins!'
    end
  end
end
