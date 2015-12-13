require 'game'

describe Game do
  let(:player){double(:player)}
  let(:opponent){double(:opponent)}
  subject(:game){described_class.new}

  describe '#add_player' do
    it 'adds a player' do
      game.add_player(player)
      expect(game.players).to include player
    end
  end

  describe '#beat?' do
    before do
      game.add_player(player)
      game.add_player(opponent)
    end
    context 'player chooses rock' do

      before {allow(player).to receive(:decision).and_return('rock')}

      it 'returns nil if opponent chose rock' do
        allow(opponent).to receive(:decision).and_return('rock')
        expect(game.player_win?).to eq nil
      end
      it 'returns false if opponent chose paper' do
        allow(opponent).to receive(:decision).and_return('paper')
        expect(game.player_win?).to eq false
      end
      it 'returns true if opponent chose scissors' do
        allow(opponent).to receive(:decision).and_return('scissors')
        expect(game.player_win?).to eq true
      end
    end

    context 'player chooses paper' do

      before {allow(player).to receive(:decision).and_return('paper')}

      it 'returns true if opponent chose rock' do
        allow(opponent).to receive(:decision).and_return('rock')
        expect(game.player_win?).to eq true
      end
      it 'returns nil if opponent chose paper' do
        allow(opponent).to receive(:decision).and_return('paper')
        expect(game.player_win?).to eq nil
      end
      it 'returns false if opponent chose scissors' do
        allow(opponent).to receive(:decision).and_return('scissors')
        expect(game.player_win?).to eq false
      end
    end

    context 'player chooses scissors' do

      before {allow(player).to receive(:decision).and_return('scissors')}

      it 'returns false if opponent chose rock' do
        allow(opponent).to receive(:decision).and_return('rock')
        expect(game.player_win?).to eq false
      end
      it 'returns true if opponent chose paper' do
        allow(opponent).to receive(:decision).and_return('paper')
        expect(game.player_win?).to eq true
      end
      it 'returns nil if opponent chose scissors' do
        allow(opponent).to receive(:decision).and_return('scissors')
        expect(game.player_win?).to eq nil
      end
    end

  end

  describe '#winner' do
    before do
      game.add_player(player)
      game.add_player(opponent)
    end
    it 'returns player if player wins' do
      allow(game).to receive(:player_win?).and_return true
      expect(game.winner).to eq player
    end
    it 'returns opponent if opponent wins' do
      allow(game).to receive(:player_win?).and_return false
      expect(game.winner).to eq opponent
    end
    it 'returns nil if no winner' do
      allow(game).to receive(:player_win?).and_return nil
      expect(game.winner).to eq nil
    end
  end

end
