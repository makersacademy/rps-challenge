require 'player'

describe Player do
    subject(:player) { described_class.new('Mario') }

    it { is_expected.to respond_to(:name) }

    it 'is created with a supplied name' do
        expect(player.name).to eq 'Mario'
    end
end