require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player) { double :player }
  let(:machine) { double :machine }

  context 'declares a win when player has better weapon' do
    it 'declares a win playing rock against scissors' do
      allow(player).to receive(:weapon).and_return(:rock)
      allow(machine).to receive(:weapon).and_return(:scissors)
      expect(game.result).to eq :win
    end

    it 'declares a win playing paper against rock' do
      allow(player).to receive(:weapon).and_return(:paper)
      allow(machine).to receive(:weapon).and_return(:rock)
      expect(game.result).to eq :win
    end

    it 'declares a win playing scissors against paper' do
      allow(player).to receive(:weapon).and_return(:scissors)
      allow(machine).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq :win
    end
  end
end
