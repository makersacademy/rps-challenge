require 'player'

describe Player do
  subject(:rob) { Player.new('Rob') }
  subject(:chiaki) { Player.new('Chiaki') }

  describe '#name' do
    it 'returns the name' do
      expect(rob.name).to eq 'Rob'
    end
  end

  describe '#weapon' do
    it 'returns nil' do
      expect(rob.weapon).to eq nil
    end
  end    	  	
end 	
