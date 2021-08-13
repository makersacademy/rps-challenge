require 'player'

describe Player do  
  it 'can be created with a name' do
    player = described_class.new('Wulfie')

    expect(player).to have_attributes(:name => 'Wulfie')
  end

  it 'can return its name' do
    expect(subject).to respond_to(:name)
  end
end
