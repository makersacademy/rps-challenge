require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2)}
  let(:player_1) { double :player_1, weapon: "rock" }
  let(:player_2) { double :player_2, weapon: "scissors" }

  describe 'default' do
    it 'accepts two players' do
      expect(game.player_1).not_to be_nil
      expect(game.player_2).not_to be_nil
    end
  end

  describe '#weapons' do
    it 'return the weapons used by both players' do
      expect(game.weapons).to eq ["rock", "scissors"]
    end
  end

  describe '#outcome' do
    it 'returns the outcome of the two weapons' do
      game.outcome
      expect(game.winner).to eq "rock"
    end

    it 'raise an error if less than two weapons have been selected' do
      allow(player_1).to receive(:weapon) {"rock"}
      allow(player_2).to receive(:weapon) { nil }
      message = "Can't play: Two weapons need to be selected."
      expect{ game.outcome }.to raise_error message
    end
  end
end
