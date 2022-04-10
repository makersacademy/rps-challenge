require "weapon"

describe Weapon do

  it 'initializes with expected default values if none are passed in' do
    expect(subject.name).to eq :missingno
    expect(subject.targets).to eq []
  end

  describe '#title' do
    it 'returns a capitalised string of the name symbol' do
      expect(subject.title).to eq "Missingno"
    end
  end

end
