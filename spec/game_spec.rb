require 'game'

describe Game do
  subject(:game) { Game.new }

  describe "#random_move" do

    it 'generate scissors' do
      allow(Kernel).to receive(:rand).and_return(2)
      expect(game.random_move).to eq :scissors
    end

    it 'generate rock' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(game.random_move).to eq :rock
    end

    it 'generate paper' do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(game.random_move).to eq :paper
    end
  end

  describe "#result" do
    it 'player paper beats computer rock' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(game.result(:paper)).to eq :win
    end

    it 'player scissors beats computer paper' do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(game.result(:scissors)).to eq :win
    end

    it 'player rock beats computer scissors' do
      allow(Kernel).to receive(:rand).and_return(2)
      expect(game.result(:rock)).to eq :win
    end

    it 'player rock loses to computer paper' do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(game.result(:rock)).to eq :lose
    end

    it 'player paper loses to computer scissors' do
      allow(Kernel).to receive(:rand).and_return(2)
      expect(game.result(:paper)).to eq :lose
    end

    it 'player scissors loses to computer rock' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(game.result(:scissors)).to eq :lose
    end

    it 'player rock draws to computer rock' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(game.result(:rock)).to eq :draw
    end
  end
end
