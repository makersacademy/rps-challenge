require 'player'

describe Player do
  # subject(:jess) { Player.new('Jess') }
  it 'instantiates' do
    expect(subject).to be_instance_of(Player)
  end

  it 'responds' do
    expect(subject).to respond_to(:name)
  end

  it '#registers a name' do
    subject.name = 'sally'
    expect(subject.name).to eq('sally')
  end


end
