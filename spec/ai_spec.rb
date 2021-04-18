require 'ai'

describe Ai do
  # subject(:jess) { Player.new('Jess') }
  it 'instantiates' do
    expect(subject).to be_instance_of(Ai)
  end

  it 'chooses rock, paper or scissors' do
    expect(subject.choice).to eq('rock').or eq('paper').or eq('scissors')
  end
end
