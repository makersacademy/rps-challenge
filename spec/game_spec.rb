require 'game'

describe 'Game' do

  let(:player){ double(:player1, name: :name, choice: nil) }
  let(:computer){ double(:player2, set_choice: nil) }

  subject(:game){ Game.new(player, computer) }

  context '#initialize' do
    it 'sets an array of choices' do
      expect(game.choices).to eq ([:rock, :paper, :scissors])
    end
    it 'sets an array of 2 players' do
      expect(game.players).to eq ([player, computer])
    end
  end

  context '#winner' do
    it 'is nil if @player_choice is nil' do
      expect(game.winner).to be_nil
    end
    context 'computer wins' do
      it 'when player chooses rock, computer chooses paper' do
        allow(player).to receive(:choice){ :rock }
        allow(computer).to receive(:choice){ :paper }
        expect(game.winner).to eq ('Computer')
      end
      it 'when player chooses paper, computer chooses scissors' do
        allow(player).to receive(:choice){ :paper }
        allow(computer).to receive(:choice){ :scissors }
        expect(game.winner).to eq ('Computer')
      end
      it 'when player chooses scissors, computer chooses rock' do
        allow(player).to receive(:choice){ :scissors }
        allow(computer).to receive(:choice){ :rock }
        expect(game.winner).to eq ('Computer')
      end
    end
    context 'player wins' do
      it 'when computer chooses rock, player chooses paper' do
        allow(player).to receive(:choice){ :paper }
        allow(computer).to receive(:choice){ :rock }
        expect(game.winner).to eq (:name)
      end
      it 'when computer chooses paper, player chooses scissors' do
        allow(player).to receive(:choice){ :scissors }
        allow(computer).to receive(:choice){ :paper }
        expect(game.winner).to eq (:name)
      end
      it 'when computer chooses scissors, player chooses rock' do
        allow(player).to receive(:choice){ :rock }
        allow(computer).to receive(:choice){ :scissors }
        expect(game.winner).to eq (:name)
      end
    end
    context 'Nobody wins' do
      it 'when computer chooses rock, player chooses rock' do
        allow(player).to receive(:choice){ :rock }
        allow(computer).to receive(:choice){ :rock }
        expect(game.winner).to eq ('Nobody')
      end
      it 'when computer chooses paper, player chooses paper' do
        allow(player).to receive(:choice){ :paper }
        allow(computer).to receive(:choice){ :paper }
        expect(game.winner).to eq ('Nobody')
      end
      it 'when computer chooses scissors, player chooses scissors' do
        allow(player).to receive(:choice){ :scissors }
        allow(computer).to receive(:choice){ :scissors }
        expect(game.winner).to eq ('Nobody')
      end
    end
  end
end
