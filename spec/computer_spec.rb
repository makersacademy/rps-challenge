require 'computer'

describe Computer do

  it 'should respond to #name' do
    expect(subject).to respond_to(:name)
  end
  it 'should respond to #weapon' do
    expect(subject).to respond_to(:weapon)
  end
  it 'should return name as passed to it' do
    expect(subject.name).to eq 'RNG God'
  end
  it 'should choose weapon' do
    subject.weapon
    expect(subject.weapon).to eq(:paper).or eq(:scissors).or eq(:rock)
  end
end
