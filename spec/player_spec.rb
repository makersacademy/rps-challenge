require 'player'

describe Player do
subject(:hans) { described_class.new("hans") }

  it '#name returns the name of the player' do
    expect(hans.name).to eq "hans"
  end

end
