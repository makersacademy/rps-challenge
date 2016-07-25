require 'player'

describe Player do
  subject(:bart) { Player.new('Bart') }
    it 'retrives the name of the player' do
      expect(bart.name).to eq 'Bart'
    end




end
