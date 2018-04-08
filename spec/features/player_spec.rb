require 'player'

describe Player do
  subject{ described_class.new('Sherlock') }

  it 'Should return the name' do
    expect(subject.name).to eq 'Sherlock'
  end

  describe '#choose' do

    it 'Should let player be able to choose' do
      subject.choose('this is a choice')
      expect(subject.choice).to eq 'this is a choice'
    end
  end

end
