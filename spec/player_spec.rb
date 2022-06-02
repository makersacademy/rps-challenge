require 'player'

describe Player do
  subject(:joe) { Player.new("Joe") }
  subject(:dan) { Player.new("Dan") }

  describe '#name' do
    it 'returns the name' do
      expect(joe.name).to eq "Joe"
      expect(dan.name).to eq "Dan"
    end
  end
end