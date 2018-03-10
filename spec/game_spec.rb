require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: 'Cleopatra', weapon: 'weapon' }
  let(:computer) { double :computer, weapon: 'weapon' }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end

  describe '#computer' do
    it 'retrieves the computer' do
      expect(game.computer).to eq computer
    end
  end

  describe '#create' do
    it 'creates an instance of the game' do
      described_class.create(player, computer)
      expect(described_class.instance).to be_an_instance_of described_class
    end
  end

  describe '#result' do
    context 'when player picks rock' do

      before(:each) { allow(player).to receive(:weapon) { :rock } }

      it 'returns win if computer picks scissors' do
        allow(computer).to receive(:weapon) { :scissors }
        expect(game.result).to eq 'Cleopatra, you win!'
      end
      it 'returns lose if computer picks paper' do
        allow(computer).to receive(:weapon) { :paper }
        expect(game.result).to eq 'Cleopatra, you lose!'
      end
      it 'returns draw if computer picks rock' do
        allow(computer).to receive(:weapon) { :rock }
        expect(game.result).to eq "It's a draw!"
      end
    end

    context 'when player picks paper' do

      before(:each) { allow(player).to receive(:weapon) { :paper } }

      it 'returns win if computer picks rock' do
        allow(computer).to receive(:weapon) { :rock }
        expect(game.result).to eq 'Cleopatra, you win!'
      end
      it 'returns lose if computer picks scissors' do
        allow(computer).to receive(:weapon) { :scissors }
        expect(game.result).to eq 'Cleopatra, you lose!'
      end
      it 'returns draw if computer picks paper' do
        allow(computer).to receive(:weapon) { :paper }
        expect(game.result).to eq "It's a draw!"
      end
    end

    context 'when player picks scissors' do

      before(:each) { allow(player).to receive(:weapon) { :scissors } }

      it 'returns win if computer picks paper' do
        allow(computer).to receive(:weapon) { :paper }
        expect(game.result).to eq 'Cleopatra, you win!'
      end
      it 'returns lose if computer picks rock' do
        allow(computer).to receive(:weapon) { :rock }
        expect(game.result).to eq 'Cleopatra, you lose!'
      end
      it 'returns draw if computer picks scissors' do
        allow(computer).to receive(:weapon) { :scissors }
        expect(game.result).to eq "It's a draw!"
      end
    end
  end
end
