require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#player_1' do
    it 'should return the player' do
      expect(game.player_1).to eq player
    end
  end

  describe '#player_2' do
    it 'should return the computer' do
      expect(game.player_2).to eq computer
    end
  end

  describe '#victor' do
    context 'when player chooses scissors' do
      before(:example) do
        allow(player).to receive(:weapon_choice).and_return(:scissors)
      end

      it 'should return :draw if both choose same weapon' do
        allow(computer).to receive(:weapon_choice).and_return(:scissors)
        expect(game.victor).to eq :draw
      end

      it 'should return :p1 if pc chose paper' do
        allow(computer).to receive(:weapon_choice).and_return(:paper)
        expect(game.victor).to eq :p1
      end

      it 'should return :p2 if pc chose rock' do
        allow(computer).to receive(:weapon_choice).and_return(:rock)
        expect(game.victor).to eq :p2
      end
    end

    context 'when player chooses rock' do
      before(:example) do
        allow(player).to receive(:weapon_choice).and_return(:rock)
      end

      it 'should return :draw if both choose same weapon' do
        allow(computer).to receive(:weapon_choice).and_return(:rock)
        expect(game.victor).to eq :draw
      end

      it 'should return :p1 if pc chose paper' do
        allow(computer).to receive(:weapon_choice).and_return(:scissors)
        expect(game.victor).to eq :p1
      end

      it 'should return :p2 if pc chose rock' do
        allow(computer).to receive(:weapon_choice).and_return(:paper)
        expect(game.victor).to eq :p2
      end
    end

    context 'when player chooses paper' do
      before(:example) do
        allow(player).to receive(:weapon_choice).and_return(:paper)
      end

      it 'should return :draw if both choose same weapon' do
        allow(computer).to receive(:weapon_choice).and_return(:paper)
        expect(game.victor).to eq :draw
      end

      it 'should return :p1 if pc chose paper' do
        allow(computer).to receive(:weapon_choice).and_return(:rock)
        expect(game.victor).to eq :p1
      end

      it 'should return :p2 if pc chose rock' do
        allow(computer).to receive(:weapon_choice).and_return(:scissors)
        expect(game.victor).to eq :p2
      end
    end
  end

end
