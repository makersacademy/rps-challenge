require 'weapon'

describe Weapon do

  let(:weapon) { described_class.new("Rock") }
  let(:cpu) { described_class.new("Scissors") }

  it 'initializes with a type' do
    expect(weapon).to respond_to :type  
  end

  describe '#win?' do
    it 'can test winner against opponent weapon' do
      expect(weapon.win?(cpu)).to eq true
    end

    it 'can test for a loser against opponent weapon' do
      expect(cpu.win?(weapon)).to eq false
    end
  end
  
end
