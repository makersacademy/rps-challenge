require 'game'

describe Game do
  let(:player1) { double(:player1, name: 'Jerry', hand: 'Rock', wins_from: ['Scissors', 'Lizard'], wins: true, empty_hand: false) }
  let(:player2) { double(:player2, name: 'Eugene', hand: 'Scissors', wins_from: ['Paper','Lizard'], wins: false, empty_hand: false) }
  let(:computer) { double(:computer, hand: 'Scissors', value_hand: 4, wins: false, empty_hand: false) }

  subject(:game_single) { described_class.new(player1, computer) }
  subject(:game_multi) { described_class.new(player1, player2) }
  describe 'initialize' do
    it 'initializes with 1 player' do
      expect(game_single.player1.name).to eq 'Jerry'
    end
  end 

  describe '#winner' do
    it 'shows whose hand has won' do
      expect(game_single.winner).to eq "#{player1} wins!"
    end
  end

  describe '#switch_player' do
    it 'switches the current player' do
      expect { game_multi.switch_player }.to change { game_multi.current_player }.to player2
    end
  end
end
