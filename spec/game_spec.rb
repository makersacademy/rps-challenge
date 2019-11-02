require 'game'

describe Game do
  subject(:game) { Game.new }

  describe "#random_move" do

    it 'generate scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      expect(game.random_move).to eq :scissors
    end

    it 'generate rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(game.random_move).to eq :rock
    end

    it 'generate paper' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      expect(game.random_move).to eq :paper
    end
  end


  describe "#result" do
    it 'player paper beats computer rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(game.result(:paper)).to eq :win
    end

    it 'player scissors beats computer paper' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      expect(game.result(:scissors)).to eq :win
    end

    it 'player rock beats computer scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      expect(game.result(:rock)).to eq :win
    end

    it 'player rock loses to computer paper' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      expect(game.result(:rock)).to eq :lose
    end

    it 'player paper loses to computer scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      expect(game.result(:paper)).to eq :lose
    end

    it 'player scissors loses to computer rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(game.result(:scissors)).to eq :lose
    end

    it 'player rock draws to computer rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(game.result(:rock)).to eq :draw
    end
  end
end
