require 'player'

describe Player do
  subject(:alfred) { Player.new('Alfred') }

  describe '#initialize' do
    it 'with the correct name' do
      expect(subject.name).to eq 'Alfred'
    end
  end

end
