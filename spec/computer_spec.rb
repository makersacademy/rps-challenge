require 'computer'

describe Computer do

  subject(:subject) { described_class.new([:rock]) }

  describe '#initialize' do
    it 'should select weapon from array' do
      expect(subject.weapon).to eq :rock
    end
  end

  describe '#name' do
    it 'should return the computers name' do
      expect(subject.name).to eq 'Computer'
    end
  end
end
