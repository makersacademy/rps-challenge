require 'messager'

describe Messager do
  let(:player1) { double(:player1, move: :rock, name: "Kevin") }
  let(:player2) { double(:player2, move: :paper, name: "Steve") }
  
  describe '#single_player_messages' do
    context 'given two moves and a result' do
      it 'returns an array of messages' do
        messages = [
          "You chose Rock",
          "Computer chose Scissors",
          "You win!"
        ]
        expect(subject.single_player_messages(:rock, :scissors, :win)).to eq messages
      end
    end
  end

  describe '#multiplayer_messages' do
    context 'given two players and a result' do
      it 'gets the moves from the given players' do
        expect(player1).to receive(:move)
        expect(player2).to receive(:move)
        subject.multiplayer_messages([player1, player2, :win])
      end

      it 'returns an array of messages' do
        messages = [
          "You chose Rock",
          "Steve chose Paper",
          "You win!"
        ]
        expect(subject.multiplayer_messages([player1, player2, :win])).to eq messages
      end

      it 'returns an array of messages' do
        messages = [
          "You chose Paper",
          "Kevin chose Rock",
          "You lose!"
        ]
        expect(subject.multiplayer_messages([player2, player1, :lose])).to eq messages
      end

      it 'returns an array of messages' do
        allow(player2).to receive(:move) { :rock }
        messages = [
          "You chose Rock",
          "Kevin chose Rock",
          "It's a draw!"
        ]
        expect(subject.multiplayer_messages([player2, player1, :draw])).to eq messages
      end
    end
  end
end
