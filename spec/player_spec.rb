require 'player'

describe Player do
  subject(:bobo) { Player.new('Bobo') }

  describe '#name' do
    it 'returns the name' do
      expect(bobo.name).to eq 'Bobo'
    end
  end

end 
