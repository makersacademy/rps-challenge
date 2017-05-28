require './lib/player'

describe Player do
  subject(:player1) { described_class.new('Ian') }

  it 'will enter name' do
    expect(player1.name).to eq 'Ian'
  end
end
