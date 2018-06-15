require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double('player1', name: "Player1", weapon: 'weapon') }
  let(:player2) { double('player2', name: "Player2", weapon: 'weapon') }

  context 'when initialized' do
    it 'takes two parameters and passes them to @player1 and @player2 attributes' do
      expect(game.player1).to eq player1
      expect(game.player2).to eq player2
    end
  end

  describe 'self#create' do
    it 'instantiates a singleton' do
      described_class.create(player1, player2)
      expect(described_class.instance).to be_an_instance_of described_class
    end
  end

  describe '#result' do
    context 'when player1 chooses rock' do

      before(:each) { allow(player1).to receive(:weapon) { :rock } }

      it 'returns "Player1 wins this game" when player2 chooses scissors' do
        allow(player2).to receive(:weapon) { :scissors }
        expect(game.result).to eq ("Player1 wins this game")
      end
      it 'returns "Player2 wins this game" when player2 chooses paper' do
        allow(player2).to receive(:weapon) { :paper }
        expect(game.result).to eq ("Player2 wins this game")
      end
      it 'returns draw when player2 chooses rock' do
        allow(player2).to receive(:weapon) { :rock }
        expect(game.result).to eq ("It's a draw")
      end
    end

    context 'when player1 chooses paper' do

      before(:each) { allow(player1).to receive(:weapon) { :paper } }

      it 'returns "Player1 wins this game" when player2 chooses rock' do
        allow(player2).to receive(:weapon) { :rock }
        expect(game.result).to eq ("Player1 wins this game")
      end
      it 'returns "Player2 wins this game" when player2 chooses scissors' do
        allow(player2).to receive(:weapon) { :scissors }
        expect(game.result).to eq ("Player2 wins this game")
      end
      it 'returns draw when player2 chooses paper' do
        allow(player2).to receive(:weapon) { :paper }
        expect(game.result).to eq ("It's a draw")
      end
    end

    context 'when player1 chooses scissors' do

      before(:each) { allow(player1).to receive(:weapon) { :scissors } }

      it 'returns "Player1 wins this game" when player2 chooses paper' do
        allow(player2).to receive(:weapon) { :paper }
        expect(game.result).to eq ("Player1 wins this game")
      end
      it 'returns "Player2 wins this game" when player2 chooses rock' do
        allow(player2).to receive(:weapon) { :rock }
        expect(game.result).to eq ("Player2 wins this game")
      end
      it 'returns draw when player2 chooses scissors' do
        allow(player2).to receive(:weapon) { :scissors }
        expect(game.result).to eq ("It's a draw")
      end
    end
  end
end
