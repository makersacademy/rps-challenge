require 'player'

describe Player do
  subject(:harry) { Player.new('Harry') }
    it 'retrives the name of the player' do
      expect(harry.name).to eq 'Harry'
    end
end
