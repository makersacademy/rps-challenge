require 'com'

describe Com do
  let(:subject) {described_class.new}

  describe '#name' do
    it 'knows its name' do
      expect(subject.name).to eq 'Com'
    end
  end
  describe '#choose'
  before do
    srand(1)
  end
  it 'returns a random number' do
    expect{subject.choose}.to change{subject.weapon}.to 3
  end
  it 'definitely returns a random number' do
    subject.choose
    expect{subject.choose}.to change{subject.weapon}.to 4
  end
end
