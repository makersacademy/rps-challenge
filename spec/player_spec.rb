require 'player'

describe Player do
   subject(:ruby) { Player.new('Ruby') }

  describe '#name' do
   it 'returns the name' do
     expect(ruby.name).to eq 'Ruby'
   end
end
end

