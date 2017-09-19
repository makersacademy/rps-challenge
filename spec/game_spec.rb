require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:computer) { double :computer }
  let(:player) { double :player }

  describe '#result' do
    it 'returns player as winner if player chooses rock and computer chooses scissors' do
      allow(player).to receive(:weapon) { :rock }
      allow(computer).to receive(:weapon) { :scissors }
      expect(game.result).to eq player
    end

    it 'returns computer as winner if player chooses rock and computer chooses paper' do
      allow(player).to receive(:weapon) { :rock }
      allow(computer).to receive(:weapon) { :paper }
      expect(game.result).to eq computer
    end

    it 'returns a draw if player chooses rock and computer chooses rock' do
      allow(player).to receive(:weapon) { :rock }
      allow(computer).to receive(:weapon) { :rock }
      expect(game.result).to eq 'draw'
    end

    it 'returns player as winner if player chooses paper and computer chooses rock' do
      allow(player).to receive(:weapon) { :paper }
      allow(computer).to receive(:weapon) { :rock }
      expect(game.result).to eq player
    end

    it 'returns player 2 as winner if player 1 chooses paper and computer chooses scissors' do
      allow(player).to receive(:weapon) { :paper }
      allow(computer).to receive(:weapon) { :scissors }
      expect(game.result).to eq computer
    end

    it 'returns a draw if player 1 chooses paper and computer chooses paper' do
      allow(player).to receive(:weapon) { :paper }
      allow(computer).to receive(:weapon) { :paper }
      expect(game.result).to eq 'draw'
    end

    it 'returns player 1 as winner if player 1 chooses scissors and computer chooses paper' do
      allow(player).to receive(:weapon) { :scissors }
      allow(computer).to receive(:weapon) { :paper }
      expect(game.result).to eq player
    end

    it 'returns player 2 as winner if player 1 chooses scissors and computer chooses rock' do
      allow(player).to receive(:weapon) { :scissors }
      allow(computer).to receive(:weapon) { :rock }
      expect(game.result).to eq computer
    end

    it 'returns a draw if player 1 chooses scissors and computer chooses scissors' do
      allow(player).to receive(:weapon) { :scissors }
      allow(computer).to receive(:weapon) { :scissors }
      expect(game.result).to eq 'draw'
    end
  end
end
