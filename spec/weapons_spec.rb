require 'weapons'

describe Weapons do
  subject(:weapons) {described_class.new}

  it 'respons to choose' do
    expect{Weapons.choose}.not_to raise_error
  end

  it 'returns a weapon' do
    expect([:rock, :paper, :scissors, :spock, :lizard]).to include Weapons.choose
  end
end
