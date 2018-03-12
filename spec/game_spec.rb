require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: 'Frank', choice: 'choice' }
  let(:computer) { double :computer, choice: 'choice' }

  describe '#player' do
    it 'registers a player in the game' do
      expect(game.player).to eq player
    end
  end

  describe '#computer' do
    it 'registers a computer player' do
      expect(game.computer).to eq computer
    end
  end

  describe '#start' do
    it 'starts a new game' do
      described_class.create(player, computer)
      expect(described_class.instance).to be_an_instance_of described_class
    end
  end

  describe '#result' do
    context 'when player picks rock' do

      before(:each) { allow(player).to receive(:choice) { :rock } }

      it 'returns win if computer picks scissors' do
        allow(computer).to receive(:choice) { :scissors }
        expect(game.result).to eq 'Frank, you win!'
      end

      it 'returns lose if computer picks paper' do
        allow(computer).to receive(:choice) { :paper }
        expect(game.result).to eq 'Frank, you lose!'
      end

      it 'returns draw if computer picks rock' do
        allow(computer).to receive(:choice) { :rock }
        expect(game.result).to eq "Draw game!"
      end
    end

    context 'when player picks paper' do

      before(:each) { allow(player).to receive(:choice) { :paper } }

      it 'returns win if computer picks rock' do
        allow(computer).to receive(:choice) { :rock }
        expect(game.result).to eq 'Frank, you win!'
      end

      it 'returns lose if computer picks scissors' do
        allow(computer).to receive(:choice) { :scissors }
        expect(game.result).to eq 'Frank, you lose!'
      end

      it 'returns draw if computer picks paper' do
        allow(computer).to receive(:choice) { :paper }
        expect(game.result).to eq "Draw game!"
      end
    end

    context 'when player picks scissors' do

      before(:each) { allow(player).to receive(:choice) { :scissors } }

      it 'returns win if computer picks paper' do
        allow(computer).to receive(:choice) { :paper }
        expect(game.result).to eq 'Frank, you win!'
      end

      it 'returns lose if computer picks rock' do
        allow(computer).to receive(:choice) { :rock }
        expect(game.result).to eq 'Frank, you lose!'
      end

      it 'returns draw if computer picks scissors' do
        allow(computer).to receive(:choice) { :scissors }
        expect(game.result).to eq "Draw game!"
      end
    end
  end
end
