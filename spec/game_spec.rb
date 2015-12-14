require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :computer }

  it 'draws the game if the players have the same weapon' do
    allow(player_1).to receive(:weapon).and_return(:rock)
    allow(player_2).to receive(:weapon).and_return(:rock)
    expect(game.result).to eq :draw
  end

  context 'declares a win when player 1 has better weapons' do
    it 'declares a win playing rock against scissors' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:scissors)
      expect(game.result).to eq :win
    end

    it 'declares a win playing paper against rock' do
      allow(player_1).to receive(:weapon).and_return(:paper)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.result).to eq :win
    end

    it 'declares a win playing scissors against paper' do
      allow(player_1).to receive(:weapon).and_return(:scissors)
      allow(player_2).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq :win
    end
  end

  context 'declares a loss when player 1 does not have better weapons' do
    it 'declares a loss playing rock against paper' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq :lose
    end

    it 'declares a win playing paper against scissors' do
      allow(player_1).to receive(:weapon).and_return(:paper)
      allow(player_2).to receive(:weapon).and_return(:scissors)
      expect(game.result).to eq :lose
    end

    it 'declares a win playing scissors against rock' do
      allow(player_1).to receive(:weapon).and_return(:scissors)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.result).to eq :lose
    end
  end

end
