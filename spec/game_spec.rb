require 'game'

describe Game do

  let(:luke) { double :player }
  subject(:game) { Game.new(luke) }

  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq luke
    end
  end

  describe '#player_throw' do
    it "returns player 1's choice" do
      game.player_throw('Scissors')
      expect(game.player_choice).to eq('Scissors')
    end
  end

  context '#conclusion' do
    before do
      allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    end
    describe 'draw' do
      it 'returns a draw if player and computer are the same' do
        game.player_throw('Scissors')
        expect(game.conclusion).to eq 'It was a draw!'
      end
    end
    describe 'win' do
      it 'returns a game win if the player wins' do
        game.player_throw('Rock')
        expect(game.conclusion).to eq 'You Win!'
      end
    end
    describe 'lose' do
      it 'returns a game lose if the player loses' do
        game.player_throw('Paper')
        expect(game.conclusion).to eq 'You Lose!'
      end
    end
  end

  describe '#result' do

  end


end
