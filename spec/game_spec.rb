require 'game'

describe Game do
  let(:player1) { double(:player1, name: 'Jerry', hand: 'Rock', wins_from: ['Scissors', 'Lizard'], wins: true, empty_hand: false) }
  let(:player2) { double(:player2, name: 'Eugene', hand: 'Scissors', wins_from: ['Paper','Lizard'], wins: false, empty_hand: false) }
  let(:computer) { double(:computer, hand: 'Scissors', value_hand: 4, wins: false, empty_hand: false, name: 'the Computer') }
  let(:win) { double (:win) }

  subject(:game_single) { described_class.new(player1, computer) }
  subject(:game_multi) { described_class.new(player1, player2) }
  
  describe 'initialize' do
    it 'initializes with 1 player' do
      expect(game_single.player1.name).to eq 'Jerry'
    end
    it 'initializes with Computer if only 1 player is given' do
      expect(game_single.player2.name).to eq 'the Computer'
    end
    it 'initializes with 2 players' do
      expect(game_multi.player2.name).to eq 'Eugene'	  
    end
  end 

   describe '#switch_player' do
    it 'switches the current player' do
      expect { game_multi.switch_player }.to change { game_multi.current_player }.to player2
    end
  end

    describe '#find_winner' do
      it 'delegates finding a winner to win' do
	pending('#find_winner in Game')
	expect(:win).to receive(:find_winner)
	game.find_winner
      end 
    end
end
