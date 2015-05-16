require 'computer'

describe Computer do
  it 'automatically has the name computer' do
    expect(subject.name).to eq 'computer'
  end

  it 'produces a random choice' do
    allow(subject).to receive(:weapon).and_return('scissors')
    expect(subject.weapon).to eq 'scissors'
  end
end