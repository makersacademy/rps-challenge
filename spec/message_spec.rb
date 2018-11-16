require 'message_generator'

describe MessageGenerator do
  let(:winner) { double :game_winner }
  let(:winning_move) { double :winning_move }

  describe 'who wins' do
    it 'returns "You win!" if player wins' do
      winner = "player"
      winning_move = "rock"
      msg_generator = MessageGenerator.new(winner, winning_move)
      msg_generator.message
      expect(msg_generator.messages).to include "You win!"
    end

    it 'returns "You lose!" if computer wins' do
      winner = "computer"
      winning_move = "rock"
      msg_generator = MessageGenerator.new(winner, winning_move)
      msg_generator.message
      expect(msg_generator.messages).to include "You lose!"
    end

    it 'returns "It\'s a draw" if winner = draw' do
      winner = "draw"
      winning_move = "rock"
      msg_generator = MessageGenerator.new(winner, winning_move)
      msg_generator.message
      expect(msg_generator.messages).to include "It's a draw"
    end
  end

  describe 'winning_move' do
    it 'returns "Rock crushes scissors" if winning_move = rock' do
      winner = "player"
      winning_move = "rock"
      msg_generator = MessageGenerator.new(winner, winning_move)
      msg_generator.message
      expect(msg_generator.messages).to include "Rock crushes scissors"
    end

    it 'returns "Paper covers rock" if winning_move = paper' do
      winner = "player"
      winning_move = "paper"
      msg_generator = MessageGenerator.new(winner, winning_move)
      msg_generator.message
      expect(msg_generator.messages).to include "Paper covers rock"
    end

    it 'returns "Scissors cut paper" if winning_move = scissors' do
      winner = "player"
      winning_move = "scissors"
      msg_generator = MessageGenerator.new(winner, winning_move)
      msg_generator.message
      expect(msg_generator.messages).to include "Scissors cut paper"
    end

    it 'returns "Stalemate!" if winning_move = draw' do
      winner = "player"
      winning_move = "draw"
      msg_generator = MessageGenerator.new(winner, winning_move)
      msg_generator.message
      expect(msg_generator.messages).to include "Stalemate!"
    end
  end
end
