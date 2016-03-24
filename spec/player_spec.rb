require 'player'

describe Player do
  subject(:player) {described_class.new('Sachin')}

  describe '#initializa' do
    it 'returns name of player' do
      expect(player.name).to eq 'Sachin'
    end
  end

  describe '#play'
   it 'player can choose rock' do
    expect(player.choice('rock')).to eq :rock
  end

end