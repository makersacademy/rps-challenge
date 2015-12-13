require 'game'

describe Game do
  let(:player1) { double :player1, is_computer?: false, name: 'name1', element: nil}
  let(:player2) { double :player2, is_computer?: false, name: 'name2', element: nil}
  let(:game) { described_class.new(player1, player2) }
  it 'stores the name of the players' do
    expect(game.players).to include player1, player2
  end
  it 'current_turn is set on player1 when start a new game' do
    expect(game.current_turn).to eq player1
  end
  describe '#first_player_name' do
    it 'returns the name of the first player' do
      expect(game.first_player_name).to eq 'name1'
    end
  end
  describe '#second_player_name' do
    it 'returns the name of the second player' do
      expect(game.second_player_name).to eq 'name2'
    end
  end
  describe '#current_turn_name' do
    it 'returns the name of the player that have to play' do
      expect(game.current_turn_name).to eq 'name1'
    end
  end
  describe '#over?' do
    it 'returns false when the game start' do
      expect(game.over?).to be false
    end
    it 'returns true if both players have their elements' do
      allow(player1).to receive(:element).and_return('rock')
      allow(player2).to receive(:element).and_return('rock')
      expect(game.over?).to be true
    end
  end
  describe '#play' do
    before do
      allow(player1).to receive(:element).and_return('rock')
      allow(player2).to receive(:element)
      allow(player1).to receive(:assign_element).and_return 'name1 chose rock'
    end
    it 'adds a string of last player assignment element to message' do
      msg = 'name1 chose rock<br>'
      game.play('rock')
      expect(game.message).to eq msg
    end
    context 'when the game is over' do
      context 'in draw' do
        it 'adds a string that game ended in draw to message' do
          msg = 'name1 chose rock<br>name2 chose rock<br>Draw, there is no winner'
          game.play('rock')
          allow(player2).to receive(:element).and_return('rock')
          allow(player2).to receive(:assign_element).and_return 'name2 chose rock'
          game.play('rock')
          expect(game.message).to eq msg
        end
      end
      context 'with a winner' do
        it 'adds a string that game ended with a winner to message' do
          msg = 'name1 chose rock<br>name2 chose scissors<br>name1 wins the game'
          game.play('rock')
          allow(player2).to receive(:element).and_return('scissors')
          allow(player2).to receive(:assign_element).and_return 'name2 chose scissors'
          game.play('scissors')
          expect(game.message).to eq msg
        end
      end
    end
    context 'when the game is not over' do
      it 'switch the turn' do
        game.play('rock')
        expect(game.current_turn).to eq player2
      end
      context 'and playing by myself' do
        before do
          allow(player2).to receive(:is_computer?).and_return true
          allow(player2).to receive(:element)
        end
        describe '#play' do
          it 'call itself automatically' do
            expect(player2).to receive(:assign_element).and_return ''
            game.play('rock')
          end
        end
      end
    end
  end
  context 'after a game' do
    before do
      allow(player1).to receive(:element).and_return('rock')
      allow(player2).to receive(:element)
      allow(player1).to receive(:assign_element).and_return 'name1 chose rock'
      game.play('rock')
      allow(player2).to receive(:element).and_return('rock')
      allow(player2).to receive(:assign_element).and_return 'name2 chose rock'
      game.play('rock')
    end
    describe '#reset' do
      before do
        allow(player1).to receive(:reset)
        allow(player2).to receive(:reset)
        game.reset
      end
      it 'send the message reset to player 1' do
        expect(player1).to receive(:reset)
        game.reset
      end
      it 'send the message reset to player 2' do
        expect(player2).to receive(:reset)
        game.reset
      end
      it 'set the message to an empty string' do
        expect(game.message).to eq ''
      end
      it 'set the current turn player to player1' do
        expect(game.current_turn).to eq player1
      end
    end
  end
end
