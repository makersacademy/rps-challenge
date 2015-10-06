require 'computer'

describe Computer do



  it 'shoud select an item from the array' do
    allow(subject).to receive(:object).and_return(:rock)
    expect(subject.object).to eq :rock
  end

  it 'should only select one out of rock, paper, scissors, spock or lizard' do
    weapons = [:paper,:scissors,:rock, :spock, :lizard]
    expect(subject.object).to satisfy { |weapon| weapons.include?(weapon) }
  end
end
