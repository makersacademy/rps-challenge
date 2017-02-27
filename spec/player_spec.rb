require './lib/player'

describe Player do
  subject(:player){described_class.new("Lauren")}

  it 'is initialized with one attribute' do
    expect(player.name).to eq "Lauren"
  end

  it 'contains the choice' do
    expect(player.choice).to eq nil
  end

  it 'can set the choice' do
    player.set_choice(:Scissors)
    expect(player.choice).to eq :Scissors
  end
end
