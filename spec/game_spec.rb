require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:computer) { double :computer }
  let(:player) { double :player }

  context 'Computer selects a shape Rock' do
    before(:each) do 
      allow(computer).to receive(:shape).and_return(:rock) 
    end

    it 'wins when player selects a shape Scissors' do
      allow(player).to receive(:shape).and_return(:scissors)
      expect(game.result(player.shape, computer.shape)).to eq :lose
    end

    it 'loses when player selects a shape Paper' do
      allow(player).to receive(:shape).and_return(:paper)
      expect(game.result(player.shape, computer.shape)).to eq :win
    end

    it 'ties when player selects a shape Rock' do
      allow(player).to receive(:shape).and_return(:rock)
      expect(game.result(player.shape, computer.shape)).to eq :tie
    end
  end

  context 'Computer selects a shape Paper' do
    before(:each) do 
      allow(computer).to receive(:shape).and_return(:paper) 
    end

    it 'wins when player selects a shape Rock' do
      allow(player).to receive(:shape).and_return(:rock)
      expect(game.result(player.shape, computer.shape)).to eq :lose
    end

    it 'loses when player selects a shape Scissors' do
      allow(player).to receive(:shape).and_return(:scissors)
      expect(game.result(player.shape, computer.shape)).to eq :win
    end

    it 'ties when player selects a shape Paper' do
      allow(player).to receive(:shape).and_return(:paper)
      expect(game.result(player.shape, computer.shape)).to eq :tie
    end
  end

  context 'Computer selects a shape Scissors' do
    before(:each) do 
      allow(computer).to receive(:shape).and_return(:scissors) 
    end

    it 'wins when player selects a shape Paper' do
      allow(player).to receive(:shape).and_return(:paper)
      expect(game.result(player.shape, computer.shape)).to eq :lose
    end

    it 'loses when player selects a shape Rock' do
      allow(player).to receive(:shape).and_return(:rock)
      expect(game.result(player.shape, computer.shape)).to eq :win
    end

    it 'ties when player selects a shape Scissors' do
      allow(player).to receive(:shape).and_return(:scissors)
      expect(game.result(player.shape, computer.shape)).to eq :tie
    end
  end  
end