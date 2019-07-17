require 'player'

describe Player do
  subject(:blank) {described_class.new("")}

  describe '#no_name' do
    it 'returns the name Gladiator if the user fails to fill their name in' do
    expect(blank.no_name).to eq "Gladiator"
    end
  end
end
