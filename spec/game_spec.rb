require 'game'
describe Game do
    subject(:game) { described_class.new(player, computer) }
    let(:player) { double :player }
    let(:computer) { double :computer }

  describe '#win' do
    it 'wins player choses rock and computer choses is scissors' do
      allow(player).to receive(:choice).and_return(:rock)
      allow(computer).to receive(:choice).and_return(:scissors)
      expect(game.result).to eq :win
    end
    it 'wins player choses is paper and computer choses is rock' do
      allow(player).to receive(:choice).and_return(:paper)
      allow(computer).to receive(:choice).and_return(:rock)
      expect(game.result).to eq :win
    end
    it 'wins player choses is scissors and computer choses is paper' do
      allow(player).to receive(:choice).and_return(:scissors)
      allow(computer).to receive(:choice).and_return(:paper)
      expect(game.result).to eq :win
    end
  end

  describe '#draw' do
    it 'draws when player choses rock and the computer choses rock' do
      allow(player).to receive(:choice).and_return(:rock)
      allow(computer).to receive(:choice).and_return(:rock)
      expect(game.result).to eq :draw
    end
    it 'draws when player choice is paper and computer choses paper' do
      allow(player).to receive(:choice).and_return(:paper)
      allow(computer).to receive(:choice).and_return(:paper)
      expect(game.result).to eq :draw
    end
    it 'draws when player choice is scissors and computer choses scissors' do
      allow(player).to receive(:choice).and_return(:scissors)
      allow(computer).to receive(:choice).and_return(:scissors)
      expect(game.result).to eq :draw
    end
  end

  describe '#lose' do
    it 'loses computer choses rock and player choses scissors' do
      allow(player).to receive(:choice).and_return(:scissors)
      allow(computer).to receive(:choice).and_return(:rock)
      expect(game.result).to eq :lose
    end
    it 'loses computer choses paper and player choses rock' do
      allow(player).to receive(:choice).and_return(:rock)
      allow(computer).to receive(:choice).and_return(:paper)
      expect(game.result).to eq :lose
    end
    it 'loses computer choses scissors and player choses paper' do
      allow(player).to receive(:choice).and_return(:paper)
      allow(computer).to receive(:choice).and_return(:scissors)
      expect(game.result).to eq :lose
    end
  end
end
