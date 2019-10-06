require 'messager'

describe Messager do
  let(:player1) { double(:player1, move: :rock, name: "Kevin") }
  let(:player2) { double(:player2, move: :paper, name: "Steve") }
  describe '#messages' do
    context 'given two players and a result' do
      it 'gets the moves from the given players' do
        expect(player1).to receive(:move)
        expect(player2).to receive(:move)
        subject.messages(player1, player2, :win)
      end

      it 'returns a hash of messages' do
        messages = {
          player_move: "You chose Rock",
          opponent_move: "Steve chose Paper",
          result: "You win!"
        }
        expect(subject.messages(player1, player2, :win)).to eq messages
      end

      it 'returns a hash of messages' do
        messages = {
          player_move: "You chose Paper",
          opponent_move: "Kevin chose Rock",
          result: "You lose!"
        }
        expect(subject.messages(player2, player1, :lose)).to eq messages
      end
    end
  end
end