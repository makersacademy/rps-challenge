require 'game'

describe 'Game' do

  let(:player1){ double(:player1, name: :name1, choice: nil, set_choice: nil) }
  let(:player2){ double(:player2, name: :name2, choice: nil, set_choice: nil) }

  subject(:game){ Game.new(player1, player2) }

  context '#initialize' do
    it 'sets an array of choices' do
      expect(game.choices).to eq ([:rock, :paper, :scissors])
    end
    it 'sets an array of 2 players' do
      expect(game.players).to eq ([player1, player2])
    end
  end

  context '#restart' do
    before :each do
      allow(player1).to receive(:reset)
      allow(player2).to receive(:reset)
    end
    it 'resets the player1\'s choice' do
      expect(player1).to receive(:reset)
      game.restart
    end
    it 'resets the player2\'s choice' do
      expect(player2).to receive(:reset)
      game.restart
    end
  end

  context '#winner' do
    it 'is nil if @player1_choice is nil' do
      expect(game.winner).to be_nil
    end
    context 'player2 wins' do
      it 'when player1 chooses rock, player2 chooses paper' do
        allow(player1).to receive(:choice){ :rock }
        allow(player2).to receive(:choice){ :paper }
        expect(game.winner).to eq (:name2)
      end
      it 'when player1 chooses paper, player2 chooses scissors' do
        allow(player1).to receive(:choice){ :paper }
        allow(player2).to receive(:choice){ :scissors }
        expect(game.winner).to eq (:name2)
      end
      it 'when player1 chooses scissors, player2 chooses rock' do
        allow(player1).to receive(:choice){ :scissors }
        allow(player2).to receive(:choice){ :rock }
        expect(game.winner).to eq (:name2)
      end
    end
    context 'player wins' do
      it 'when player2 chooses rock, player1 chooses paper' do
        allow(player1).to receive(:choice){ :paper }
        allow(player2).to receive(:choice){ :rock }
        expect(game.winner).to eq (:name1)
      end
      it 'when player2 chooses paper, player1 chooses scissors' do
        allow(player1).to receive(:choice){ :scissors }
        allow(player2).to receive(:choice){ :paper }
        expect(game.winner).to eq (:name1)
      end
      it 'when player2 chooses scissors, player1 chooses rock' do
        allow(player1).to receive(:choice){ :rock }
        allow(player2).to receive(:choice){ :scissors }
        expect(game.winner).to eq (:name1)
      end
    end
    context 'Nobody wins' do
      it 'when player2 chooses rock, player1 chooses rock' do
        allow(player1).to receive(:choice){ :rock }
        allow(player2).to receive(:choice){ :rock }
        expect(game.winner).to eq ('Nobody')
      end
      it 'when player2 chooses paper, player1 chooses paper' do
        allow(player1).to receive(:choice){ :paper }
        allow(player2).to receive(:choice){ :paper }
        expect(game.winner).to eq ('Nobody')
      end
      it 'when player2 chooses scissors, player1 chooses scissors' do
        allow(player1).to receive(:choice){ :scissors }
        allow(player2).to receive(:choice){ :scissors }
        expect(game.winner).to eq ('Nobody')
      end
    end
  end
end
