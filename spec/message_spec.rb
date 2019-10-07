require 'message_generator'

describe MessageGenerator do
  let(:winner) { double :winning_player }
  let(:loser) { double :losing_player }

  describe 'who wins' do
    before do
      allow(winner).to receive(:name).and_return "Matt"
      allow(winner).to receive(:move).and_return "rock"
      allow(loser).to receive(:move).and_return "scissors"
    end
    it "returns 'winner.name wins!' if player wins" do
      msg_generator = MessageGenerator.new(winner, loser)
      msg_generator.message
      expect(msg_generator.messages).to include "Matt wins!"
    end

    it 'returns "It\'s a draw" if winner = draw' do
      msg_generator = MessageGenerator.new("draw", loser)
      msg_generator.message
      expect(msg_generator.messages).to include "It's a draw"
    end
  end

  describe 'winning_move' do
    before do
      allow(winner).to receive(:name).and_return "Matt"
    end
    context 'rock wins' do
      before do
        allow(winner).to receive(:move).and_return "rock"
      end
      it 'returns "Rock crushes scissors" if winning_move = rock' do
        allow(loser).to receive(:move).and_return "scissors"
        msg_generator = MessageGenerator.new(winner, loser)
        msg_generator.message
        expect(msg_generator.messages).to include "Rock crushes scissors"
      end

      it 'returns "Rock crushes lizard" if winning_move = rock' do
        allow(loser).to receive(:move).and_return "lizard"
        msg_generator = MessageGenerator.new(winner, loser)
        msg_generator.message
        expect(msg_generator.messages).to include "Rock crushes lizard"
      end
    end

    context 'Spock wins' do
      before do
        allow(winner).to receive(:move).and_return "spock"
      end
      it 'returns "Spock vapourises rock" if winning_move = spock' do
        allow(loser).to receive(:move).and_return "rock"
        msg_generator = MessageGenerator.new(winner, loser)
        msg_generator.message
        expect(msg_generator.messages).to include "Spock vapourises rock"
      end
      it 'returns "Spock smashes scissors" if winning_move = spock' do
        allow(loser).to receive(:move).and_return "scissors"
        msg_generator = MessageGenerator.new(winner, loser)
        msg_generator.message
        expect(msg_generator.messages).to include "Spock smashes scissors"
      end
    end

    context 'lizard wins' do
      before do
        allow(winner).to receive(:move).and_return "lizard"
      end
      it 'returns "Lizard poisons Spock" if winning_move = lizard' do
        allow(loser).to receive(:move).and_return "spock"
        msg_generator = MessageGenerator.new(winner, loser)
        msg_generator.message
        expect(msg_generator.messages).to include "Lizard poisons Spock"
      end
      it 'returns "Lizard eats paper" if winning_move = lizard' do
        allow(loser).to receive(:move).and_return "paper"
        msg_generator = MessageGenerator.new(winner, loser)
        msg_generator.message
        expect(msg_generator.messages).to include "Lizard eats paper"
      end
    end

    context 'paper wins' do
      before do
        allow(winner).to receive(:move).and_return "paper"
      end
      it 'returns "Paper disproves Spock" if winning_move = paper' do
        allow(loser).to receive(:move).and_return "spock"
        msg_generator = MessageGenerator.new(winner, loser)
        msg_generator.message
        expect(msg_generator.messages).to include "Paper disproves Spock"
      end
      it 'returns "Paper covers rock" if winning_move = paper' do
        allow(loser).to receive(:move).and_return "rock"
        msg_generator = MessageGenerator.new(winner, loser)
        msg_generator.message
        expect(msg_generator.messages).to include "Paper covers rock"
      end
    end

    context 'scissors win' do
      before do
        allow(winner).to receive(:move).and_return "scissors"
      end
      it 'returns "Scissors cut paper" if winning_move = scissors' do
        allow(loser).to receive(:move).and_return "paper"
        msg_generator = MessageGenerator.new(winner, loser)
        msg_generator.message
        expect(msg_generator.messages).to include "Scissors cut paper"
      end

      it 'returns "Scissors decapitate lizard" if winning_move = scissors' do
        allow(loser).to receive(:move).and_return "lizard"
        msg_generator = MessageGenerator.new(winner, loser)
        msg_generator.message
        expect(msg_generator.messages).to include "Scissors decapitate lizard"
      end
    end

    it 'returns "Stalemate!" if winning_move = draw' do
      allow(winner).to receive(:move).and_return "draw"
      msg_generator = MessageGenerator.new("draw", loser)
      draw_message = "Congrats, you both live to see another day"
      msg_generator.message
      expect(msg_generator.messages).to include draw_message
    end
  end
end
