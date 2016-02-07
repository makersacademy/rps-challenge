require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, weapon: weapon_1 }
  let(:weapon_1) { double :weapon }
  let(:player_2) { double :player, weapon: weapon_2 }
  let(:weapon_2) { double :weapon }

  describe '#multiplayer?' do
    let(:multi_player_game) do
      described_class.multi_player(player_1, player_2)
    end

    it 'returns false for a single player game' do
      expect(game.multiplayer?).to be_falsy
    end

    it 'returns true for a multiplayer game' do
      expect(multi_player_game.multiplayer?).to be_truthy
    end
  end

  describe '#player' do
    context 'when passed 1' do
      it 'returns the first player' do
        expect(game.player(1)).to be player_1
      end
    end

    context 'when passed 2' do
      it 'returns the second player' do
        expect(game.player(2)).to be player_2
      end
    end

    context 'when passed an invalid player number' do
      it 'raises an error' do
        expect { game.player(3) }
        .to raise_error described_class::ARGUMENT_ERROR_MSG
      end
    end

    context 'when passed a negative value' do
      it 'raises an error' do
        expect { game.player(-3) }
        .to raise_error described_class::ARGUMENT_ERROR_MSG
      end
    end

    context 'when passed a non-numeric value' do
      it 'raises an error' do
        expect { game.player('invalid') }
        .to raise_error described_class::ARGUMENT_ERROR_MSG
      end
    end
  end

  describe '#result' do
    context 'when player 1\'s weapon beats player 2\'s' do
      before do
        allow(weapon_1).to receive(:type)  { :scissors }
        allow(weapon_2).to receive(:type)  { :paper }
        allow(weapon_1).to receive(:beats?) { true }
      end

      it 'returns that player 1 won' do
        expect(game.result).to eq :p1_win
      end
    end

    context 'when player 2\'s weapon beats player 1\'s' do
      before do
        allow(weapon_1).to receive(:type)  { :paper }
        allow(weapon_2).to receive(:type)  { :scissors }
        allow(weapon_1).to receive(:beats?) { false }
      end

      it 'returns that player 2 won' do
        expect(game.result).to eq :p2_win
      end
    end

    context 'when both players picked the same weapon' do
      before do
        allow(weapon_1).to receive(:type)  { :rock }
        allow(weapon_2).to receive(:type)  { :rock }
      end

      it 'returns a draw' do
        expect(game.result).to eq :draw
      end
    end

    context 'if called before both players have chosen a weapon' do
      before do
        allow(player_1).to receive(:weapon) { nil }
      end
      it 'raises an error' do
        expect { game.result }
        .to raise_error described_class::RUNTIME_ERROR_MSG
      end
    end
  end
end
