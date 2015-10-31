require 'player'

describe Player do
  subject(:player) {described_class.new ('Eric')}

  it 'has a name' do
    expect(player.name).to eq 'Eric'
  end
end
