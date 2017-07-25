require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player, name: 'Sheldon') }
  let(:player_2) { double(:computer, name: 'Computer') }

  describe 'initialisation' do
    it 'sets player 1' do
      expect(game.player_1).to eq player_1
    end

    it 'sets player 2' do
      expect(game.player_2).to eq player_2
    end

  end

  describe '#result' do
    context 'player 1 chooses rock' do
      before do
        allow(player_1).to receive(:weapon).and_return(:rock)
      end

      it 'says player 1 wins when player 2 chooses scissors' do
        allow(player_2).to receive(:weapon).and_return(:scissors)
        expect(game.result).to eq :win
      end

      it 'says player 1 loses when player 2 chooses paper' do
        allow(player_2).to receive(:weapon).and_return(:paper)
        expect(game.result).to eq :lose
      end

      it 'says player 1 ties when player 2 chooses rock' do
        allow(player_2).to receive(:weapon).and_return(:rock)
        expect(game.result).to eq :tie
      end
    end

    context 'player 1 chooses paper' do
      before do
        allow(player_1).to receive(:weapon).and_return(:paper)
      end

      it 'says player 1 loses when player 2 chooses scissors' do
        allow(player_2).to receive(:weapon).and_return(:scissors)
        expect(game.result).to eq :lose
      end

      it 'says player 1 ties when player 2 chooses paper' do
        allow(player_2).to receive(:weapon).and_return(:paper)
        expect(game.result).to eq :tie
      end

      it 'says player 1 wins when player 2 chooses rock' do
        allow(player_2).to receive(:weapon).and_return(:rock)
        expect(game.result).to eq :win
      end
    end

    context 'player 1 chooses scissors' do
      before do
        allow(player_1).to receive(:weapon).and_return(:scissors)
      end

      it 'says player 1 ties when player 2 chooses scissors' do
        allow(player_2).to receive(:weapon).and_return(:scissors)
        expect(game.result).to eq :tie
      end

      it 'says player 1 wins when player 2 chooses paper' do
        allow(player_2).to receive(:weapon).and_return(:paper)
        expect(game.result).to eq :win
      end

      it 'says player 1 loses when player 2 chooses rock' do
        allow(player_2).to receive(:weapon).and_return(:rock)
        expect(game.result).to eq :lose
      end
    end
  end
end
