require 'player'

describe Player do
  subject(:jon) { Player.new('Jon') }

  context '#name' do
    it 'returns the name' do
      expect(jon.name).to eq 'Jon'
    end
  end
end
