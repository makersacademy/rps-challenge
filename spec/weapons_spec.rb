require 'weapons'

describe Weapons do

  subject(:weapons) { described_class.new }

  describe 'defaults' do
    it 'should store a hash detailing the RPS choices' do
      expect(weapons.rules).to eq(rock: :scissors, paper: :rock, scissors: :paper)
    end

    it 'should have a nil result' do
      expect(weapons.result).to eq nil
    end
  end

  describe '#result' do
    it 'should recognise a draw' do
      weapons.compare(:paper, :paper)
      expect(weapons.result).to eq :draw
    end

    it 'should recognise rock beats scissors' do
      weapons.compare(:rock, :scissors)
      expect(weapons.result).to eq :rock
    end

    it 'should recognise rock beats scissors reverse' do
      weapons.compare(:scissors, :rock)
      expect(weapons.result).to eq :rock
    end

    it 'should recognise paper beats rock' do
      weapons.compare(:paper, :rock)
      expect(weapons.result).to eq :paper
    end

    it 'should recognise paper beats rock reverse' do
      weapons.compare(:rock, :paper)
      expect(weapons.result).to eq :paper
    end

    it 'should recognise scissors beats paper' do
      weapons.compare(:paper, :scissors)
      expect(weapons.result).to eq :scissors
    end

    it 'should recognise scissors beats paper reverse' do
      weapons.compare(:scissors, :paper)
      expect(weapons.result).to eq :scissors
    end
  end

end
