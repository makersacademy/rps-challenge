require 'player'

describe Player do
  subject(:kyle) { described_class.new('Kyle') }

  describe '#name' do
    it 'should return player name' do
      expect(kyle.name).to eq 'Kyle'
    end
  end

end
