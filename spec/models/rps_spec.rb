require './models/rps'
require './models/player'
require './models/cpu'

describe Rps do
  let(:player) { double(:player) }
  let(:cpu) { double(:cpu) }

  describe '#moves' do

    it 'should initialize with an array containing rps' do
      expect(subject.available_moves).to eq(["Rock", "Paper", "Scissors"])
    end

  end

  describe '#decide_result' do

    it 'should show rock beats scissors' do
      allow(player).to receive(:move).and_return("Rock")
      allow(cpu).to receive(:move).and_return("Scissors")
      expect(subject.decide_result(player, cpu)).to eq player
    end

    it 'should show scissors beats paper' do
      allow(player).to receive(:move).and_return("Scissors")
      allow(cpu).to receive(:move).and_return("Paper")
      expect(subject.decide_result(player, cpu)).to eq player
    end

    it 'should show paper beats rock' do
      allow(player).to receive(:move).and_return("Paper")
      allow(cpu).to receive(:move).and_return("Rock")
      expect(subject.decide_result(player, cpu)).to eq player
    end

    it 'should show scissors beats paper' do
      allow(player).to receive(:move).and_return("Paper")
      allow(cpu).to receive(:move).and_return("Scissors")
      expect(subject.decide_result(player, cpu)).to eq cpu
    end

    it 'should show a draw' do
      allow(player).to receive(:move).and_return("Scissors")
      allow(cpu).to receive(:move).and_return("Scissors")
      expect(subject.decide_result(player, cpu)).to eq "draw"
    end

  end
end
