require './lib/game'

describe Game do
  subject(:game) {described_class.new(player,computer)}
  let(:player) {double(:player, :name => 'Player1', :option => 'rock')}
  let(:computer) {double(:computer, :choose_option => 'scissors')}

  context 'To play a game' do
    it 'able to see a player' do
      expect(game.player).to eq player
    end

    it 'able to see the computer' do
      expect(game.computer).to eq computer
    end

    describe 'player_choose' do
      it 'allows the player choose an option' do
        expect(player).to receive(:choose)
        game.player_choose('rock')
      end
    end

    describe '#computer_chooses' do
      it 'chooses an option' do
        expect(game.computer_choose).to eq 'scissors'
      end
    end
  end

  context 'when the player wins' do
    describe '#result' do
        it 'shows You won! message' do
          allow(computer).to receive(:option).and_return('scissors')
          expect(game.result).to eq 'You won!'
      end
    end
  end
end
