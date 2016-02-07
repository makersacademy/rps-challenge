require 'player'

describe Player do
  subject(:player) {described_class.new(player_name)}
  let(:player_name) {double :player_name}

  describe '#initialize' do
    it 'initiliazes with name' do
      expect(player.name).to eq player_name
    end
  end

  describe '#move' do
    it 'raises error if argument is not an allowed action' do
      expect{player.make_move(:alt)}.to raise_error("Not an allowed action")
    end

    it 'accepts all allowed actions and returns their move' do
      expect(player.make_move(:rock)).to eq :rock
      expect(player.make_move(:paper)).to eq :paper
      expect(player.make_move(:scissors)).to eq :scissors
      expect(player.make_move(:lizzard)).to eq :lizzard
      expect(player.make_move(:spock)).to eq :spock
    end
  end


end
