require 'player'

describe Player do
  let(:name) { 'Bob' }
  subject {described_class.new(name) }
  let(:weapon) { :paper }

  it 'should respond to #name' do
    expect(subject).to respond_to(:name)
  end
  it 'should respond to #weapon' do
    expect(subject).to respond_to(:weapon)
  end
  it 'should return name as passed to it' do
    expect(subject.name).to eq name
  end
  it 'should add weapon choice' do
    subject.weapon_choice(weapon)
    expect(subject.weapon).to eq weapon
  end
end