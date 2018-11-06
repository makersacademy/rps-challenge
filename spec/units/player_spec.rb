require 'player'

describe Player do 
  subject(:player) { described_class.new('Alastair') }

  describe '#initialize' do 
    it 'defaults with @points = 0' do 
      expect(subject.points). to eq 0
    end
    it 'sets and knows its @name' do
      expect(subject.name).to eq 'Alastair'
    end
  end

end
