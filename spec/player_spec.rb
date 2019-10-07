require 'player'

describe Player do

  let(:name) { double :name }
  let(:weapon) { double :weapon }

  subject { described_class.new(name) }

  it 'has a name' do
    expect(subject.name).to eq name
  end

  it 'can choose a weapon' do
    expect { subject.choice(weapon) }.to change { subject.weapon }.from(nil).to weapon
  end

  it 'returns rock, paper or scissors' do
    expect(subject.random_choice).to eq(:rock).or eq(:paper).or eq(:scissors)
  end
  
end
