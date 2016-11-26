require 'weapons'

describe Weapons do

  describe '#list' do

    it 'contains Rock, Paper and Scissors' do
      expect(Weapons::LIST).to include(:rock, :paper, :scissors)
    end

  end

  describe '#random' do

    it 'chooses a random weapon from the weapons list' do
      expect(subject.random).to be_kind_of Symbol
    end

  end

end
