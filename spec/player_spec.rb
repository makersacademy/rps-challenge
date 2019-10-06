require 'player'

describe Player do

  subject(:pamela){ described_class.new("pamela")}

  it 'returns the player name' do
    expect(pamela.name).to eq "pamela"
  end

end