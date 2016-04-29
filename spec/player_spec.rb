require 'player'

describe 'Player' do
  subject(:sergio) { Player.new("Sergio")}

  context '#name' do
    it 'returns the name' do
      expect(sergio.name).to eq "Sergio"
    end
  end
end