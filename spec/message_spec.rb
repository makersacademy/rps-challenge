require 'message_generator'

describe MessageGenerator do
  let(:winner) { double :winning_player }

  describe 'who wins' do
    before do
      allow(winner).to receive(:name).and_return "Matt"
      allow(winner).to receive(:move).and_return "rock"
    end
    it 'returns "You win!" if player wins' do
      msg_generator = MessageGenerator.new(winner)
      msg_generator.message
      expect(msg_generator.messages).to include "Matt wins!"
    end

    it 'returns "It\'s a draw" if winner = draw' do
      msg_generator = MessageGenerator.new("draw")
      msg_generator.message
      expect(msg_generator.messages).to include "It's a draw"
    end
  end

  describe 'winning_move' do
    before do
      allow(winner).to receive(:name).and_return "Matt"
    end
    it 'returns "Rock crushes scissors" if winning_move = rock' do
      allow(winner).to receive(:move).and_return "rock"
      msg_generator = MessageGenerator.new(winner)
      msg_generator.message
      expect(msg_generator.messages).to include "Rock crushes scissors"
    end

    it 'returns "Paper covers rock" if winning_move = paper' do
      allow(winner).to receive(:move).and_return "paper"
      msg_generator = MessageGenerator.new(winner)
      msg_generator.message
      expect(msg_generator.messages).to include "Paper covers rock"
    end

    it 'returns "Scissors cut paper" if winning_move = scissors' do
      allow(winner).to receive(:move).and_return "scissors"
      msg_generator = MessageGenerator.new(winner)
      msg_generator.message
      expect(msg_generator.messages).to include "Scissors cut paper"
    end

    it 'returns "Stalemate!" if winning_move = draw' do
      allow(winner).to receive(:move).and_return "draw"
      msg_generator = MessageGenerator.new("draw")
      msg_generator.message
      expect(msg_generator.messages).to include "Stalemate!"
    end
  end
end
