require_relative '../lib/player.rb'

describe Player do

  subject(:player) { described_class.new("Ellie") }

  describe '#initialize' do
    it 'initializes with a name' do
      expect(player.name).to eq('Ellie')
    end
  end

  describe '#win' do
    it 'increases @wins by one' do
      expect { player.win }.to change { player.wins }.from(0).to(1)
    end
  end


end
