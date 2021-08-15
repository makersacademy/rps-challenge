require 'player'

describe Player do
  subject(:ash) { Player.new('Ash') }

  it 'accepts a name' do
    expect(ash.name).to eq('Ash')
  end
end
