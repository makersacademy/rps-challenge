require 'game'

describe Game do

    let (:player_one) {double :player_one}
    let (:player_two) {double :player_two}

    subject(:game) {described_class.new(player_one, player_two)}

    before do
      allow(player_one).to receive(:name).and_return('Refkah')
      allow(player_two).to receive(:name).and_return('Robot')
    end

    describe '#initialize' do

      it 'initializes with player one' do
        expect(player_one.name).to eq 'Refkah'
      end

      it 'initializes with player two' do
        expect(player_two.name).to eq 'Robot'
      end

    end

    describe '#result' do

      it 'can recognise a win' do
        allow(player_one).to receive(:move).and_return(:paper)
        allow(player_two).to receive(:move).and_return(:rock)
        expect(game.result).to eq :win
      end

      it 'can recognise a loss' do
        allow(player_one).to receive(:move).and_return(:scissors)
        allow(player_two).to receive(:move).and_return(:rock)
        expect(game.result).to eq :lose
      end

      it 'can recognise a draw' do
        allow(player_one).to receive(:move).and_return(:paper)
        allow(player_two).to receive(:move).and_return(:paper)
        expect(game.result).to eq :draw
      end

    end

end
