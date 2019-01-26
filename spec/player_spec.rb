require 'player'

RSpec.describe Player do
  subject(:wilson) { Player.new('Wilson') }
  
  describe '#name' do
    it 'returns the name' do
      expect(wilson.name).to eq('Wilson')
    end
  end

end