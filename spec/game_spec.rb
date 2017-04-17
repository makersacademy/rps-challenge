require './lib/game'

describe Game do
  subject(:game) {described_class.new(player,computer)}
  let(:player) {double(:player, :name => 'Chuka', :weapon => 'rock')}
  let(:computer) {double(:computer, :choose_weapon => 'scissors')}

  context 'To play a game' do
    it 'should be able to see a player' do
      expect(game.player).to eq player
    end

    it 'should be able to see the computer' do
      expect(game.computer).to eq computer
    end

    describe 'player_choose' do
      it 'should allow the player choose a weapon' do
        expect(player).to receive(:choose)
        game.player_choose('rock')
      end
    end

    describe '#computer_chooses' do
      it 'should choose a weapon' do
        expect(game.computer_choose).to eq 'scissors'
      end
    end
  end

  context 'when the player wins' do
    describe '#result' do
        it 'should print a congratulatory message' do
          allow(computer).to receive(:weapon).and_return('scissors')
          expect(game.result).to eq 'Congratulations!'
      end
    end
  end
end
