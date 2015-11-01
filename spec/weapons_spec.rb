require 'weapons'

describe Weapons do
  subject(:weapons) {described_class.new}

  describe '#random_weapon' do
    it {is_expected.to respond_to(:random_weapon)}
  end

  describe '#rules' do
    it 'rock vs rock result draws' do
      expect(weapons.rules(:rock, :rock)).to eq :draws
    end
    it 'rock vs paper result loose' do
      expect(weapons.rules(:rock, :paper)).to eq :looses
    end
    it 'rock vs scissors result wins' do
      expect(weapons.rules(:rock, :scissors)).to eq :wins
    end
    it 'paper vs rock result wins' do
      expect(weapons.rules(:paper, :rock)).to eq :wins
    end
    it 'paper vs paper result draws' do
      expect(weapons.rules(:paper, :paper)).to eq :draws
    end
    it 'paper vs scissors result loose' do
      expect(weapons.rules(:paper, :scissors)).to eq :looses
    end
    it 'scissors vs rock result loose' do
      expect(weapons.rules(:scissors, :rock)).to eq :looses
    end
    it 'scissors vs paper result wins' do
      expect(weapons.rules(:scissors, :paper)).to eq :wins
    end
    it 'scissors vs scissors result draw' do
      expect(weapons.rules(:scissors, :scissors)).to eq :draws
    end

  end
end