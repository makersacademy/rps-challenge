require 'game'

describe Game do
  let(:player) { double(:player) }
  let(:player2) { double(:player2) }
  let(:computer) { double(:computer) }
  context 'one player game' do
    let(:game) { described_class.new(player, computer) }
    it 'starts with a player' do 
      expect(game.player).to eq player
    end
    before do
      allow(computer).to receive(:choice).and_return "rock"
    end
    it 'can receive a computers choice' do
      expect(game.opponent.choice).to eq "rock"
    end
    context '#result' do
      it 'returns a draw if both choices are the same' do
        expect(game.result("rock")).to eq "Drew"
      end
      it 'returns a win if player wins' do
        expect(game.result("paper")).to eq "Won"
      end
      it 'returns a loss if computer wins' do
        expect(game.result("scissors")).to eq "Lost"
      end
    end
  end
  context 'two player game' do
    let(:two_player_game) { described_class.new(player, player2) }
    it 'knows the first player' do 
      expect(two_player_game.player).to eq player
    end
    it 'knows the second player' do
      expect(two_player_game.opponent).to eq player2
    end
    context '#result' do
      it 'returns a draw if both choices are the same' do
        expect(two_player_game.result("rock", "rock")).to eq "Drew"
      end
      it 'returns a win if player 1 wins' do
        expect(two_player_game.result("paper", "rock")).to eq "Won"
      end
      it 'returns a loss if player 2 wins' do
        expect(two_player_game.result("scissors", "rock")).to eq "Lost"
      end
    end
    context '#store_choice' do
      it 'stores player 1\'s choice' do
        two_player_game.store_choice("rock")
        expect(two_player_game.player_1_choice).to eq "rock"
      end
      it 'returns the next path' do
        expect(two_player_game.store_choice("rock")).to eq '/two_play_too'
      end
    end
  end
end
