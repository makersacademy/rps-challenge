require './lib/player'

describe Player do

  let(:player) { described_class.new("Pietro") }

  context 'set-up' do

    it 'must have a name' do
      expect { described_class.new } .to raise_error(ArgumentError)
    end

  end

  context 'behaviour' do

    it 'knows its name' do
      expect(player.name).to eq "Pietro"
    end

    it 'can be assigned a weapon choice' do
      player.choice = :rock
      expect(player.choice).to eq :rock
    end

  end

end
